
data <- matrix(c(10, 20, 30, 40), nrow = 2, byrow = TRUE) 
rownames(data) <- c("Category A", "Category B")
colnames(data) <- c("Factor 1", "Factor 2")

chi_square_result <- chisq.test(data)
print(chi_square_result)
# Load necessary packages
library(ggplot2)


contingency_df <- as.data.frame(data)


ggplot(contingency_df, aes(x = Factor.1, y = Factor.2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Contingency Table Heatmap",
       x = "Factor 1",
       y = "Factor 2")
