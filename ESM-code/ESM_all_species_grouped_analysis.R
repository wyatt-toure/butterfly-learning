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

data = read.csv('heliconiini-data.csv')

### Group by id and remove any individuals who did not make both colour choices in either 
### morning or afternoon during training 

data2 = data %>% group_by(id) %>% filter(all(n.correct.training > 0 & n.incorrect.training > 0))

### Remove individuals who did not respond at all during a session in final test 

data3 = data2 %>% group_by(id) %>% filter(all(n.morning.colour.test > 0 | n.afternoon.colour.test > 0))

### Remove individuals who did not achieve greater than 50% correct responses
### in last 2 days of training 

data4 = data3 %>% group_by(id) %>% filter(all(prop.correct.training.last.2 > 0.5))


### Do individuals who were correct at a high rate in the last 2 days of training shift preference initially (b)

naive.model.high.performers = glmer(cbind(n.morning.colour.initial, n.afternoon.colour.initial) ~ time.of.day  + (1 | cage/id),
                                    data= data4, family = binomial)

summary(naive.model.high.performers)

#  No p = 0.471

### Do individuals who were correct at a high rate shift preference when trained

trained.model.high.performers = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day * final.presentation + (1 | id),
                                      data=  data4, family = binomial)
summary(trained.model.high.performers) 

plot(allEffects(trained.model.high.performers))

#  from effect plot we can see that the interaction effect does not reverse the shift in preference
#  so final presentation dropped in the model

trained.model.high.performers2 = glmer(cbind(n.morning.colour.test, n.afternoon.colour.test) ~ time.of.day + (1 | id),
                                       data=  data4, family = binomial)
summary(trained.model.high.performers2) 
