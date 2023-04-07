library(tidyverse)
library(dplyr)
library(dslabs)
library(data.table)
data(murders)
murders <- setDT(murders)
murders[, rate := total / population * 100000]
murders[order(region, rate)]
