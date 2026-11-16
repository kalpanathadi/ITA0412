# Load dataset
data(ChickWeight)

# Convert Diet to a categorical variable
ChickWeight$Diet <- factor(ChickWeight$Diet)

# Build multiple regression model
model <- lm(weight ~ Time + Diet,
            data = ChickWeight)

# Display model summary
print(summary(model))

# Predict weight
predicted_weight <- predict(model,
                            newdata = ChickWeight)

print(head(predicted_weight))

# Calculate actual model errors
actual_weight <- ChickWeight$weight
residuals <- actual_weight - predicted_weight

# Mean Absolute Error
MAE <- mean(abs(residuals))

# Mean Squared Error
MSE <- mean(residuals^2)

# Root Mean Squared Error
RMSE <- sqrt(MSE)

print(MAE)
print(MSE)
print(RMSE)

# Plot actual vs predicted weight
plot(actual_weight, predicted_weight,
     main = "Actual vs Predicted Weight",
     xlab = "Actual Weight",
     ylab = "Predicted Weight",
     pch = 19,
     col = "blue")

abline(0, 1, col = "red", lwd = 2)