
num_str <- readline(prompt = "Enter a list of numbers separated by spaces: ")
num_str <- gsub("[[:space:]]+", " ", num_str)  # Replace consecutive spaces with single space
num_str <- trimws(num_str)  # Remove leading/trailing spaces
num_str_split <- strsplit(num_str, " ")[[1]]
numbers <- as.numeric(num_str_split)


min_number <- min(numbers)
max_number <- max(numbers)

cat("Minimum number:", min_number, "\n")
cat("Maximum number:", max_number, "\n")
