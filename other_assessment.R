library(dslabs)
data(heights)
str(heights)
test <- vector(length = 5)
for (i in 1:5){
  test[i] <- i^2
}
library(dplyr)
new_height <- mutate(heights, t_height = ifelse(heights$height > 72, heights$height, 0))
new_height <- filter(new_height, height>72)
mean(new_height$height)