install.packages("arules")
library(arules)

transactions <- list(
  c("milk", "bread", "eggs"),
  c("bread", "butter"),
  c("milk", "bread", "butter"),
  c("milk", "bread", "eggs", "butter"),
  c("milk", "eggs")
)
trans <- as(transactions, "transactions")

rules <- apriori(trans, parameter = list(supp = 0.3, conf = 0.8))

filtered_rules <- subset(rules, lift > 1.2)
inspect(filtered_rules)
