# Sample data
values <- c(12, 15, 18, 20, 22, 25, 28, 30, 35, 40)

# 1. Boxplot
boxplot(values,
        main = "Boxplot",
        ylab = "Values",
        col = "lightblue")

# 2. Histogram
hist(values,
     main = "Histogram",
     xlab = "Values",
     col = "lightgreen")

# 3. Bar plot
marks <- c(85, 90, 78, 95)
students <- c("Anu", "Bala", "Charan", "Divya")

barplot(marks,
        names.arg = students,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks",
        col = "orange")

# 4. Line chart
plot(1:10, values,
     type = "o",
     main = "Line Chart",
     xlab = "Observation",
     ylab = "Value",
     col = "blue")

# 5. Scatterplot
x <- c(1, 2, 3, 4, 5)
y <- c(10, 15, 20, 25, 30)

plot(x, y,
     main = "Scatter Plot",
     xlab = "X Values",
     ylab = "Y Values",
     pch = 19,
     col = "red")