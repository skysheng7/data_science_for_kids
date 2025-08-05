# 🔮 Day 2 - Spell 7: Your First Plot (No Data Yet!)

# Load our magical plotting package
library(ggplot2)

########################################################
# 🎯 Challenge 1: Simple bar chart with lists
# 📝 Instructions:
# Try changing the data to your own favorite animals and counts!

# Create simple lists
animals <- c("cat", "dog", "rabbit", "hamster", "fish")
counts <- c(3, 5, 2, 1, 4)

print("🐾 Our animal data:")
print(paste("Animals:", paste(animals, collapse = ", ")))
print(paste("Counts:", paste(counts, collapse = ", ")))

# Make your first plot!
plot1 <- ggplot() + 
  geom_col(aes(x = animals, y = counts))

print(plot1)

########################################################
# 🎯 Challenge 2: Try your own food ratings data
print("\n🍕 Creating a plot with your own food ratings data!")

# Create your own lists - change these ... to your favorites!
my_foods <- c(...)
my_ratings <- c(...)

# Make a plot with your data
plot2 <- ggplot() + 
  geom_col(aes(x = my_foods, y = my_ratings))

print(plot2)


########################################################
# ✨ Challenge: Create your own plot!
# Fill in your own data and create a plot:

my_categories <- c("___", "___", "___")  # Fill in 3 things you want to compare
my_values <- c(___, ___, ___)  # Fill in numbers for each thing

# Fill in the code below in ... and run them:
my_plot <- ... + 
   geom_col(aes(x = ..., y = ...))
print(...)


# 🔮 **What does this code do?**
# - `c()` creates a simple list
# - `ggplot()` starts the magic
# - `geom_col()` creates bars
# - `aes()` tells R what goes where (x and y axes)