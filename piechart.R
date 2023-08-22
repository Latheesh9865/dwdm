
data <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(25, 30, 15, 20)
)

library(ggplot2)
pie_chart <- ggplot(data, aes(x = "", y = value, fill = category)) +
  geom_bar(stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Pie Chart Example") +
  theme_minimal() +
  theme(legend.position = "right")

print(pie_chart)
