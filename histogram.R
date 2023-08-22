
library(ggplot2)

data <- data.frame(
  value = c(rnorm(1000, mean = 50, sd = 10))
)
hist(data$value, 
     main = "Histogram Example",
     xlab = "Values",
     ylab = "Frequency",
     col = "lightblue")
ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Histogram Example",
       x = "Values",
       y = "Frequency")

