data = read.csv('heliconiini-data.csv')

##### Why do individuals fail the training criterion #######

# Remove individuals who did not respond 

data = subset(data, criterion != 'NA')

# Restrict to only the rows with the values for the shift in proportional preference  
data = subset(data, time.of.day == '1morning')

# Is there a difference in the flexibility of colour choices from morning to afternoon
# in failers and passers?

naive.model = glm(abs.shift.in.prop.morning.colour ~ criterion,
                    data=  data, family = quasibinomial())
summary(naive.model)

# Yes p <  0.0001, t = 5.33
