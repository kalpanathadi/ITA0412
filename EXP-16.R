
data(USArrests)

print(summary(USArrests))

# State with largest Rape value
print(rownames(USArrests)[which.max(USArrests$Rape)])

# Maximum and minimum Murder rates
print(max(USArrests$Murder))
print(min(USArrests$Murder))

# Correlation matrix
print(cor(USArrests))

# Assault above median
print(USArrests[USArrests$Assault >
                  median(USArrests$Assault), ])

# Bottom 25% for Murder
q <- quantile(USArrests$Murder, 0.25)
print(USArrests[USArrests$Murder <= q, ])

# Visualizations
hist(USArrests$Murder, main="Murder Rates",
     xlab="Murder")

plot(density(USArrests$Assault),
     main="Assault Density")

plot(USArrests$Murder, USArrests$Assault,
     xlab="Murder", ylab="Assault",
     main="Murder vs Assault")

barplot(USArrests$Murder,
        names.arg=rownames(USArrests),
        las=2, cex.names=0.5,
        main="Murder Rates by State")
