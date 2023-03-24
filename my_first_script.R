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
data(murders)
#murder_rate <- murders$total/murders$population*100000
#safe <- murder_rate <= 1
#west <- murders$region == "West"
#index <- safe & west
#murders$state[index]
#c("Massachusetts") %in% murders$state

#murders <- mutate(murders, rate=total/population*100000)
#filter(murders, rate <= 0.71)
#new_table <- select(murders,state,region,rate)
#filter(new_table, rate <= 0.71)

#murders %>% select(state,region,rate) %>% filter(rate <= 0.71)

# creating a data frame with stringAsFactors = FALSE
#grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
#                     exam_1 = c(95, 80, 90, 85), 
#                     exam_2 = c(90, 85, 85, 90),
#                     stringsAsFactors = FALSE)
# load packages
library(tidyverse)
murders <- mutate(murders, rate = total / population * 10^5)

# group by region
murders %>% group_by(region)

# summarize after grouping
murders %>% 
  group_by(region) %>%
  summarize(median = median(rate))
murders %>% arrange(desc(rate)) %>% top_n(10)