# Create sample advertising dataset
advertising <- data.frame(
  Spend = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100),
  Sales = c(15, 20, 25, 30, 35, 40, 45, 50, 55, 60)
)

# Build regression model
model <- lm(Sales ~ Spend, data = advertising)

# Display model summary
print(summary(model))

# Predict sales
new_data <- data.frame(Spend = c(25, 55, 85))
predictions <- predict(model, newdata = new_data)

print(predictions)

# Plot regression line
plot(advertising$Spend, advertising$Sales,
     main = "Advertising Spend vs Sales",
     xlab = "Advertising Spend",
     ylab = "Sales",
     pch = 19)

abline(model, col = "red", lwd = 2)