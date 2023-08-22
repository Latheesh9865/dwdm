
time_series <- data.frame(
  date = seq(as.Date("2023-01-01"), by = "days", length.out = 10),
  value = c(10, 15, 20, 25, 30, 35, 40, 45, 50, 55)
)


line_chart <- ggplot(time_series, aes(x = date, y = value)) +
  geom_line() +
  labs(title = "Line Chart Example",
       x = "Date",
       y = "Value") +
  theme_minimal()

print(line_chart)
