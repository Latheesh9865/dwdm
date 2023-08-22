
library(ggplot2)


data <- data.frame(
  y = c(10, 15, 20, 25, 30),
  x1 = c(2, 4, 5, 6, 8),
  x2 = c(1, 3, 4, 5, 7)
)

multiple_model <- lm(y ~ x1 + x2, data = data)

summary(multiple_model)

plot(multiple_model, which = 1)


plot(multiple_model, which = 2)


plot(multiple_model, which = 3)

plot(multiple_model, which = 5)

predicted_values <- predict(multiple_model, newdata = data)

ggplot(data, aes(x = y, y = predicted_values)) +
  geom_point(color = "blue") +
  geom_abline(intercept = 0, slope = 1, color = "red") +
  labs(title = "Actual vs. Predicted",
       x = "Actual y",
       y = "Predicted y")
