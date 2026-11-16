
# Run once if required:
# install.packages("reshape2")

library(reshape2)
data(ChickWeight)

sorted_data <- ChickWeight[
  order(ChickWeight$weight), ]
print(head(sorted_data))

melted <- melt(
  ChickWeight,
  id.vars=c("Chick", "Diet", "Time")
)
print(head(melted))

avg_weight <- dcast(
  ChickWeight,
  Diet ~ Time,
  value.var="weight",
  fun.aggregate=mean
)

print(avg_weight)
