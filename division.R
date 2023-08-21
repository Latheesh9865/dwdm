
num1 <- as.numeric(readline(prompt = "Enter the numerator: "))
num2 <- as.numeric(readline(prompt = "Enter the denominator: "))

if (num2 == 0) {
  cat("Error: Division by zero is not allowed.\n")
} else {
 
  quotient <- num1 / num2

  cat("The quotient of", num1, "divided by", num2, "is:", quotient, "\n")
}
