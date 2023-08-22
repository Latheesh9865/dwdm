
library(ggplot2)
library(corrplot) 


data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 3, 5, 4, 6)
)

correlation_matrix <- cor(data)
correlation_coefficient <- correlation_matrix[1, 2]
print(correlation_coefficient)
corrplot(correlation_matrix, method = "color", type = "upper", tl.cex = 1.0)
corrplot(correlation_matrix, method = "color", type = "upper", tl.cex = 1.0)
