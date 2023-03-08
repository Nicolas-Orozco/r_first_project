#library(tidyverse)
#library(ggplot2)
#murders %>%
#  ggplot(aes(population, total, label=abb, color=region)) +
#  geom_label()
#name <- c("Mandi", "Amy", "Nicole", "Olivia")
#distance <- c(0.8, 3.1, 2.8, 4.0)
#time <- c(10, 30, 40, 50)
#time <- time/60
#speed <- distance/time

library(dslabs)
library(dplyr)
#data(murders)
#murder_rate <- murders$total/murders$population*100000
#safe <- murder_rate <= 1
#west <- murders$region == "West"
#index <- safe & west
#murders$state[index]
#c("Massachusetts") %in% murders$state

#murders <- mutate(murders, rate=total/population*100000)
#murders %>% filter(region == "Northeast")
#new_table <- select(murders,state,region,rate)
#filter(new_table, rate <= 0.71)

#murders %>% select(state,region,rate) %>% filter(rate <= 0.71)

# creating a data frame with stringAsFactors = FALSE
#grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
#                     exam_1 = c(95, 80, 90, 85), 
#                     exam_2 = c(90, 85, 85, 90),
#                     stringsAsFactors = FALSE)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)
murders <- mutate(murders, rate = total / population * 100000)
hist(murders$rate)
boxplot(rate~region, data = murders)
