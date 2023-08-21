
num_str <- readline(prompt = "Enter three numbers separated by spaces: ")
num_str <- gsub("[[:space:]]+", " ", num_str) 
num_str <- trimws(num_str)  
num_str_split <- strsplit(num_str, " ")[[1]]
numbers <- as.numeric(num_str_split)


greatest_number <- max(numbers)


cat("The greatest number is:", greatest_number, "\n")
