
numbers <- c(10, 20, 30)
mat <- matrix(1:4, nrow=2)
square <- function(x) {
  return(x^2)
}

my_list <- list(
  Vector=numbers,
  Matrix=mat,
  Function=square
)

print(my_list)
print(my_list$Function(5))
