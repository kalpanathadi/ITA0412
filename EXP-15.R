
data(iris)

# Dimensions and summary
print(dim(iris))
print(summary(iris))

# Standard deviations
print(sapply(iris[1:4], sd))

# Quantiles
print(quantile(iris$Sepal.Length))

# Average measurements by Species
print(aggregate(. ~ Species, data=iris, mean))

# Pivot table
print(xtabs(~ Species + cut(Sepal.Length, 3),
            data=iris))

# Categorize Sepal.Length
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks=3,
  labels=c("Short", "Medium", "Long")
)

print(table(iris$Species, iris$Sepal_Category))
