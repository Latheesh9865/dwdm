
calculate_quartiles <- function(numbers) {
  q1 <- quantile(numbers, 0.25)
  q2 <- quantile(numbers, 0.5) 
  q3 <- quantile(numbers, 0.75)
  return(c(q1, q2, q3))
}


num_str <- readline(prompt = "Enter a list of numbers separated by spaces: ")
num_str <- gsub("[[:space:]]+", " ", num_str)  
num_str <- trimws(num_str)  
num_str_split <- strsplit(num_str, " ")[[1]]
numbers <- as.numeric(num_str_split)


quartiles <- calculate_quartiles(numbers)
iqr <- quartiles[3] - quartiles[1]
mid_range <- (max(numbers) + min(numbers)) / 2


cat("Quartiles:", quartiles, "\n")
cat("Interquartile Range:", iqr, "\n")
cat("Mid-Range:", mid_range, "\n")
