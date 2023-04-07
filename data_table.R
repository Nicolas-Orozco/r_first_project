library(data.table)
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- setDT(murders)
murders[, .(state, region)] |> head()
# Add column
murders <- mutate(murders, rate = total / population * 10^5)
murders[rate <= 0.7, .(state, rate)]
