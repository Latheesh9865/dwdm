
z_score_normalize <- function(numbers) {
  mean_val <- mean(numbers)
  std_dev <- sd(numbers)
  
  z_scores <- (numbers - mean_val) / std_dev
  return(z_scores)
}

num_str <- readline(prompt = "Enter a list of numbers separated by spaces: ")
num_str <- gsub("[[:space:]]+", " ", num_str)  # Replace consecutive spaces with single space
num_str <- trimws(num_str)  # Remove leading/trailing spaces
num_str_split <- strsplit(num_str, " ")[[1]]
numbers <- as.numeric(num_str_split)

normalized_scores <- z_score_normalize(numbers)

cat("Original Numbers:", numbers, "\n")
cat("Normalized Z-Scores:", normalized_scores, "\n")
