
calculate_mode <- function(numbers) {
  uniq_nums <- unique(numbers)
  freq <- tabulate(match(numbers, uniq_nums))
  mode <- uniq_nums[which(freq == max(freq))]
  return(mode)
}


num_str <- readline(prompt = "Enter a list of numbers separated by spaces: ")
num_str <- gsub("[[:space:]]+", " ", num_str) 
num_str <- trimws(num_str)  
num_str_split <- strsplit(num_str, " ")[[1]]
numbers <- as.numeric(num_str_split)


mean_value <- mean(numbers)
median_value <- median(numbers)
mode_value <- calculate_mode(numbers)


cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
