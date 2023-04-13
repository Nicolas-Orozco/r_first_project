library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
average <- mean(heights$height)
ind <- c(which(heights$sex == "Female"))
print(length(ind))
min_height = min(heights$height)
print(match(min_height, heights$height))