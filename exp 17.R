# Load Titanic dataset
data(Titanic)

# Convert Titanic table into a data frame
titanic_data <- as.data.frame(Titanic)

# 1. Bar chart of survival vs passenger class
survival_class <- xtabs(Freq ~ Survived + Class,
                        data = titanic_data)

barplot(survival_class,
        beside = TRUE,
        col = c("tomato", "lightgreen"),
        legend = TRUE,
        main = "Survival vs Passenger Class",
        xlab = "Passenger Class",
        ylab = "Number of Passengers")

# 2. Survival by gender
survival_gender <- xtabs(Freq ~ Survived + Sex,
                         data = titanic_data)

barplot(survival_gender,
        beside = TRUE,
        col = c("tomato", "lightgreen"),
        legend = TRUE,
        main = "Survival by Gender",
        xlab = "Gender",
        ylab = "Number of Passengers")

# 3. Survival by class and gender
survival_detail <- xtabs(Freq ~ Survived + Class + Sex,
                         data = titanic_data)
print(survival_detail)