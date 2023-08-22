
data <- c(100, 250, 1500, 35, 5000)

max_value <- max(data)
scaling_factor <- 10^ceiling(log10(max_value))

scaled_data <- data / scaling_factor
print(scaled_data)
