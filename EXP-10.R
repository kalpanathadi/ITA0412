
exam_data <- data.frame(
  name=c("Anu", "Bala", "Charan"),
  score=c(85, 60, 92),
  attempts=c(1, 2, 1),
  qualify=c(TRUE, TRUE, TRUE)
)

print(exam_data)

# Extract data
print(exam_data$name)
print(exam_data[1, ])

# Add a row
exam_data[nrow(exam_data)+1, ] <-
  list("Divya", 45, 3, FALSE)

# Add a column
exam_data$grade <- c("A", "B", "A", "C")

# Sort by score
exam_data <- exam_data[order(-exam_data$score), ]
print(exam_data)

# Save to CSV
write.csv(exam_data, "exam_data.csv", row.names=FALSE)
