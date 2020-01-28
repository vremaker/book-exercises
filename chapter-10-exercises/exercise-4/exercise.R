# Exercise 4: external data sets: Gates Foundation Educational Grants
getwd()
setwd("/Users/valerie/Desktop/info201/book-exercises/chapter-10-exercises/exercise-4/data")

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!

grants <- read.csv("gates_money.csv", stringsAsFactors = FALSE)
# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
orgainzation <- grants[grants$organization,]
print(orgainzation)

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(orgainzation)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_value <- mean(grants$total_amount)
print(mean_value)

# What was the dollar amount of the largest grant?
max_value <- max(grants$total_amount)
print(max_value)
# What was the dollar amount of the smallest grant?

lowest_grant <- min(grants$total_amount)
print(lowest_grant)
# Which organization received the largest grant?

large_org <- grants[grants$total_amount == max_value, "organization"]
print(large_org)

# Which organization received the smallest grant?

small_org <- grants[grants$total_amount == lowest_grant, "organization"]
print(small_org)
# How many grants were awarded in 2010?
grants_given <- sum(grants[grants$grant_title != "" ,])
print(grants_given)  
  
