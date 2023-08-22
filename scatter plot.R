# Load necessary packages
library(ggplot2)

# Example data frame with two variables: 'x' and 'y'
data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 3, 5, 4, 6)
)
plot(data$x, data$y,
     main = "Scatter Plot Example",
     xlab = "Variable x",
     ylab = "Variable y",
     col = "blue",
     pch = 16)  # Use solid circles as points
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", shape = 16) +
  labs(title = "Scatter Plot Example",
       x = "Variable x",
       y = "Variable y")
