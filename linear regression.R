
library(ggplot2)

data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 3, 5, 4, 6)
)

linear_model <- lm(y ~ x, data = data)

summary(linear_model)
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", shape = 16) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Linear Regression Example",
       x = "Variable x",
       y = "Variable y")


