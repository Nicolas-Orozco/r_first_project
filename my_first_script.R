library(tidyverse)
library(ggplot2)
library(dslabs)
data(murders)

murders %>%
  ggplot(aes(population, total, label=abb, color=region)) +
  geom_label()



