#########################     Required Packages       ######################

library(lme4)
library(lmerTest)
library(psych)
library(ggplot2)
library(ggpubr)
library(DHARMa)
library(dplyr)
library(tidyr)
library(DHARMa)
library(effects)

#### Read in data ######
# REPLACE PATH IN read.csv(PATH) with path to full_heliconius_dataset
data = read.csv('heliconiini-data.csv')

######### COLOUR ##############################
# Purple morning, yellow afternoon

datapmya = subset(data, colour.training.scheme == 'purple.morning.yellow.afternoon')

### Group by id and remove any individuals who did not make both colour choices in either 
### morning or afternoon during training 

data2pmya = datapmya %>% group_by(id) %>% filter(all(n.correct.training > 0 & n.incorrect.training > 0))

### Remove individuals who did not respond at all during a session in final test 

data3pmya = data2pmya %>% group_by(id) %>% filter(all(n.morning.colour.test > 0 | n.afternoon.colour.test > 0))

### Remove individuals who did not achieve greater than 50% correct responses
### in last 2 days of training 

data4pmya = data3pmya %>% group_by(id) %>% filter(all(prop.correct.training.last.2 > 0.5))

### Do individuals who were correct at a high rate shift preference when trained
### Cage random effect dropped singular fit issue 

trained.model.high.performers1 = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day + (1 | id),
                                      data=  data4pmya, family = binomial)
summary(trained.model.high.performers1) 

### yes p = 0.000892

# model checking 

simulationOutput <- simulateResiduals(fittedModel = trained.model.high.performers1)
testDispersion(simulationOutput)
testUniformity(simulationOutput = simulationOutput)
testZeroInflation(simulationOutput)

# model ok


#  Yellow Morning, Purple Afternoon

dataympa = subset(data, colour.training.scheme == 'yellow.morning.purple.afternoon')

### Group by id and remove any individuals who did not make both colour choices in either 
### morning or afternoon during training 

data2ympa = dataympa %>% group_by(id) %>% filter(all(n.correct.training > 0 & n.incorrect.training > 0))

### Remove individuals who did not respond at all during a session in final test 

data3ympa = data2ympa %>% group_by(id) %>% filter(all(n.morning.colour.test > 0 | n.afternoon.colour.test > 0))

### Remove individuals who did not achieve greater than 50% correct responses
### in last 2 days of training 

data4ympa = data3ympa %>% group_by(id) %>% filter(all(prop.correct.training.last.2 > 0.5))

### Do individuals who were correct at a high rate shift preference when trained
### Cage random effect dropped singular fit issue 

trained.model.high.performers2 = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day + (1 | id),
                                      data=  data4ympa, family = binomial)
summary(trained.model.high.performers2) 

### yes p <  0.001

# model checking 

simulationOutput <- simulateResiduals(fittedModel = trained.model.high.performers2)
testDispersion(simulationOutput)
testUniformity(simulationOutput = simulationOutput)
testZeroInflation(simulationOutput)

#  model ok


### Plots Colour section  #####

g2 <- ggplot(data4pmya, aes(time.of.day, (n.morning.colour.test/(n.morning.colour.test+n.afternoon.colour.test)))) + theme_classic()# +
scale_colour_manual(values = c('#353b48', '#e84118'))

b <- g2 + geom_jitter(size =2, alpha = .25, width = 0.02) +
  stat_summary(
    geom = 'point',
    fun = 'mean',
    size = 4.5,
    shape = 15) +
  stat_summary(geom = 'errorbar', 
               fun.data = 'mean_cl_normal', fun.args = list(mult = 2), position = position_dodge(width=.05), width = 0.1) 

colour.plot.1 <- b + ylab('Morning reward colour preference') + xlab("Time of Day") + ggtitle("Trained shift in preference") +
  theme(axis.text=element_text(size=10), axis.title=element_text(size=11,face="bold"), 
        plot.title = element_text(size=12, hjust=0.5)) + ylim(-0.05, 1.05) + geom_line(aes(group = id), color = 'grey')

colour.plot.1

g3 <- ggplot(data4ympa, aes(time.of.day, (n.morning.colour.test/(n.morning.colour.test+n.afternoon.colour.test)))) + theme_classic()# +
scale_colour_manual(values = c('#353b48', '#e84118'))

b <- g3 + geom_jitter(size =2, alpha = .25, width = 0.02) +
  stat_summary(
    geom = 'point',
    fun = 'mean',
    size = 4.5,
    shape = 15) +
  stat_summary(geom = 'errorbar', 
               fun.data = 'mean_cl_normal', fun.args = list(mult = 2), position = position_dodge(width=.05), width = 0.1) 

colour.plot.2 <- b + ylab('Morning reward colour preference') + xlab("Time of Day") + ggtitle("Trained shift in preference") +
  theme(axis.text=element_text(size=10), axis.title=element_text(size=11,face="bold"), 
        plot.title = element_text(size=12, hjust=0.5)) + ylim(-0.05, 1.05) + geom_line(aes(group = id), color = 'grey')

colour.plot.2

ggarrange(colour.plot.1, colour.plot.2, nrow = 1)


######### SEX ##############################

#  Females

female.data = subset(data, sex == 'F')

### Group by id and remove any individuals who did not make both colour choices in either 
### morning or afternoon during training 

female.data2 = female.data %>% group_by(id) %>% filter(all(n.correct.training > 0 & n.incorrect.training > 0))

### Remove individuals who did not respond at all during a session in final test 

female.data3 = female.data2 %>% group_by(id) %>% filter(all(n.morning.colour.test > 0 | n.afternoon.colour.test > 0))

### Remove individuals who did not achieve greater than 50% correct responses
### in last 2 days of training 

female.data4 = female.data3 %>% group_by(id) %>% filter(all(prop.correct.training.last.2 > 0.5))

### Do individuals who were correct at a high rate shift preference when trained
### Cage random effect dropped singular fit issue 

trained.model.high.performers3 = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day + (1 | id),
                                       data=  female.data4, family = binomial)
summary(trained.model.high.performers3) 

### yes p =  4.92e-06

# model checking 

simulationOutput <- simulateResiduals(fittedModel = trained.model.high.performers3)
testDispersion(simulationOutput)
testUniformity(simulationOutput = simulationOutput)
testZeroInflation(simulationOutput)

#  model ok

#  Males

male.data = subset(data, sex == 'M')

### Group by id and remove any individuals who did not make both colour choices in either 
### morning or afternoon during training 

male.data2 = male.data %>% group_by(id) %>% filter(all(n.correct.training > 0 & n.incorrect.training > 0))

### Remove individuals who did not respond at all during a session in final test 

male.data3 = male.data2 %>% group_by(id) %>% filter(all(n.morning.colour.test > 0 | n.afternoon.colour.test > 0))

### Remove individuals who did not achieve greater than 50% correct responses
### in last 2 days of training 

male.data4 = male.data3 %>% group_by(id) %>% filter(all(prop.correct.training.last.2 > 0.5))

### Do individuals who were correct at a high rate shift preference when trained
### Cage random effect dropped singular fit issue 

trained.model.high.performers4 = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day + (1 | id),
                                       data=  male.data4, family = binomial)
summary(trained.model.high.performers4) 

### yes p =  1.25e-13

# model checking 

simulationOutput <- simulateResiduals(fittedModel = trained.model.high.performers4)
plot(simulationOutput)
testUniformity(simulationOutput = simulationOutput)
testZeroInflation(simulationOutput)

#  model ok

### Plots Sex section  #####

g2 <- ggplot(female.data4, aes(time.of.day, (n.morning.colour.test/(n.morning.colour.test+n.afternoon.colour.test)))) + theme_classic()

b <- g2 + geom_jitter(size =2, alpha = .25, width = 0.02) +
  stat_summary(
    geom = 'point',
    fun = 'mean',
    size = 4.5,
    shape = 15) +
  stat_summary(geom = 'errorbar', 
               fun.data = 'mean_cl_normal', fun.args = list(mult = 2), position = position_dodge(width=.05), width = 0.1) 

sex.plot.1 <- b + ylab('Morning reward colour preference') + xlab("Time of Day") + ggtitle("Trained shift in preference") +
  theme(axis.text=element_text(size=10), axis.title=element_text(size=11,face="bold"), 
        plot.title = element_text(size=12, hjust=0.5)) + ylim(-0.05, 1.05) + geom_line(aes(group = id), color = 'grey')

sex.plot.1

g3 <- ggplot(male.data4, aes(time.of.day, (n.morning.colour.test/(n.morning.colour.test+n.afternoon.colour.test)))) + theme_classic()# +
scale_colour_manual(values = c('#353b48', '#e84118'))

b <- g3 + geom_jitter(size =2, alpha = .25, width = 0.02) +
  stat_summary(
    geom = 'point',
    fun = 'mean',
    size = 4.5,
    shape = 15) +
  stat_summary(geom = 'errorbar', 
               fun.data = 'mean_cl_normal', fun.args = list(mult = 2), position = position_dodge(width=.05), width = 0.1) 

sex.plot.2 <- b + ylab('Morning reward colour preference') + xlab("Time of Day") + ggtitle("Trained shift in preference") +
  theme(axis.text=element_text(size=10), axis.title=element_text(size=11,face="bold"), 
        plot.title = element_text(size=12, hjust=0.5)) + ylim(-0.05, 1.05) + geom_line(aes(group = id), color = 'grey')

sex.plot.2

ggarrange(sex.plot.1, sex.plot.2, nrow = 1)
