library(tidyverse)
library(dplyr)
library(dslabs)
data(heights)
heights <- setDT(heights)
# summarizing in data.table
s <- heights[, .(average = mean(height), standard_deviation = sd(height))]
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}
heights[, .(median_min_max(height))]

#data(murders)
#murders <- setDT(murders)
#murders[, .(state, region)] |> head()
# Add column
#murders <- mutate(murders, rate = total / population * 10^5)
#murders[rate <= 0.7, .(state, rate)]
