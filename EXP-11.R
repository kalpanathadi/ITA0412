
# Create sample CSV data
write.csv(
  data.frame(Name=c("Anu", "Bala"),
             Marks=c(85, 90)),
  "students.csv",
  row.names=FALSE
)

# Read the CSV file
data <- read.csv("students.csv")
print(data)
