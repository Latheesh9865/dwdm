install.packages("randomForest")
library(randomForest)

data <- data.frame(
  y = c(5, 10, 15, 20, 25, 30, 35, 40),
  x1 = c(2, 4, 6, 8, 10, 12, 14, 16),
  x2 = c(1, 3, 5, 7, 9, 11, 13, 15),
  x3 = c(0, 1, 0, 1, 0, 1, 0, 1)
)

rf_model <- randomForest(y ~ x1 + x2 + x3, data = data, ntree = 500)

new_data <- data.frame(
  x1 = c(6, 8),
  x2 = c(5, 7),
  x3 = c(0, 1)
)


predictions <- predict(rf_model, newdata = new_data)
print(predictions)

var_importance <- rf_model$importance
print(var_importance)
