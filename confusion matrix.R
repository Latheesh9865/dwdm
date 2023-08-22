install.packages("caret")
library(caret)
actual <- c("A", "B", "A", "A", "B", "B", "A", "B", "A", "A")

predicted <- c("A", "B", "A", "A", "A", "B", "B", "A", "B", "A")
conf_matrix <- confusionMatrix(predicted, actual)
print(conf_matrix)
plot(conf_matrix$table, col = conf_matrix$byClass, 
     main = "Confusion Matrix", 
     dimnames = list(Actual = levels(conf_matrix$reference), Predicted = levels(conf_matrix$prediction)))
