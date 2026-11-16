
# Run once if required:
# install.packages("reshape2")

library(reshape2)
data(airquality)

aq <- airquality
names(aq)[names(aq) == "Temp"] <- "Temperature"

melted <- melt(
  aq,
  id.vars=c("Month", "Day"),
  measure.vars=c("Ozone", "Solar.R", "Wind", "Temperature"),
  variable.name="Measurement",
  value.name="Value"
)

print(head(melted))

monthly_avg <- dcast(
  melted,
  Month ~ Measurement,
  fun.aggregate=function(x) mean(x, na.rm=TRUE)
)

print(monthly_avg)
