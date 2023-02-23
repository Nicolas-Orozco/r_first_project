#library(tidyverse)
#library(ggplot2)
#library(dslabs)
#data(murders)

#murders %>%
#  ggplot(aes(population, total, label=abb, color=region)) +
#  geom_label()
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time <- time/60
speed <- distance/time


