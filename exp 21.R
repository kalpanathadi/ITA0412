# Install package if needed
if (!requireNamespace("nnet", quietly = TRUE)) {
  install.packages("nnet")
}

library(nnet)

# Load dataset
data(iris)

# Set seed for reproducibility
set.seed(123)

# Randomly shuffle row indices
index <- sample(1:nrow(iris),
                size = 0.8 * nrow(iris))

# Split into training and testing data
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Build multinomial logistic regression model
model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data = train_data,
  trace = FALSE
)

# Display model summary
print(summary(model))

# Predict species
predictions <- predict(model,
                       newdata = test_data)

print(predictions)

# Confusion matrix
confusion_matrix <- table(
  Actual = test_data$Species,
  Predicted = predictions
)

print(confusion_matrix)

# Calculate accuracy
accuracy <- mean(predictions == test_data$Species)

print(paste("Accuracy:", round(accuracy * 100, 2), "%"))