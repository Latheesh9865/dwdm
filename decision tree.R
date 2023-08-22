install.packages("rpart")
library(rpart)

data <- data.frame(
  x1 = c(1, 2, 3, 4, 5, 6, 7, 8),
  x2 = c(2, 4, 3, 1, 6, 7, 5, 8),
  y = c("A", "B", "A", "B", "A", "B", "A", "B")
)

tree_model <- rpart(y ~ x1 + x2, data = data)

plot(tree_model)

new_data <- data.frame(
  x1 = c(3, 6),
  x2 = c(2, 7)
)

predictions <- predict(tree_model, new_data, type = "class")
print(predictions)
