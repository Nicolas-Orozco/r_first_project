library(dslabs)
library(dplyr)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
average <- mean(heights$height)
ind <- c(which(heights$sex == "Female"))
print(length(ind))
min_height = min(heights$height)
min_index <- match(min_height, heights$height)
print(heights$sex[min_index])

# max height
max_height = max(heights$height)
print(max_height)

calculateint <- function(n1, n2){
  n1 <- round(n1)
  n2 <- round(n2)
  if (abs(n1-n2) <= 1)
    return(NULL)
  if (n2 < n1)
    return(seq.int(from = n2 + 1, length.out = abs(n1 - n2) - 1))
  return(seq.int(from = n1 + 1, length.out = abs(n1 - n2) - 1))
}

sum(!calculateint(min_height, max_height) %in% heights$height)
new_heights <- mutate(heights, ht_cm = height *2.54)
new_heights$ht_cm[18]
mean(new_heights$ht_cm)

# females dataset
females <- data.frame(filter(new_heights, sex == "Female"))
mean(females$ht_cm)