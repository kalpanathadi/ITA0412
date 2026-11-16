
arr <- array(1:8, dim=c(2, 2, 2),
             dimnames=list(
               Row=c("R1", "R2"),
               Column=c("C1", "C2"),
               Table=c("T1", "T2")
             ))

print(arr)

# Print specific elements
print(arr["R1", "C1", "T1"])
print(arr["R2", "C2", "T2"])
