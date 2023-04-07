library(tidyverse)
library(dplyr)
library(dslabs)
library(data.table)
data(murders)
murders %>% group_by(region) %>% class()

# Use $ to access
class(as_tibble(murders)$state)

# create tibble
tibble(id = c(1, 2, 3), func = c(mean, median, sd))
