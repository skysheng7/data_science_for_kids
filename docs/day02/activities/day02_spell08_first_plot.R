# 🔮 Day 2 - Spell 8: Your First Plot (No Data Yet!)

# 🎈 Activity: Drawing Without Data
# 🎭 Let's start simple - we can make plots even without complicated data!

# Load our magical plotting package
library(ggplot2)

# 🎯 Challenge 1: Simple bar chart with lists
print("🎨 Creating your first plot!")

# Create simple lists (these are called vectors)
animals <- c("cat", "dog", "rabbit", "hamster", "fish")
counts <- c(3, 5, 2, 1, 4)

print("🐾 Our animal data:")
print(paste("Animals:", paste(animals, collapse = ", ")))
print(paste("Counts:", paste(counts, collapse = ", ")))

# Make your first plot!
plot1 <- ggplot() + 
  geom_col(aes(x = animals, y = counts))

print(plot1)

# 🎯 Challenge 2: Try your own data
print("\n🍕 Creating a plot with your own data!")

# Create your own lists - change these to your favorites!
my_foods <- c("pizza", "ice cream", "tacos", "cookies")
my_ratings <- c(10, 9, 8, 10)

# Make a plot with your data
plot2 <- ggplot() + 
  geom_col(aes(x = my_foods, y = my_ratings))

print(plot2)

# 🎯 Challenge 3: Experiment with different data
print("\n🌈 Creating a color popularity plot!")

# Try with colors
colors <- c("red", "blue", "green", "yellow", "purple")
popularity <- c(7, 4, 8, 5, 6)

plot3 <- ggplot() + 
  geom_col(aes(x = colors, y = popularity))

print(plot3)

# 💡 What does this code do?
print("\n🔮 Understanding the magic:")
print("- c() creates simple lists (called vectors)")
print("- ggplot() starts every plot")
print("- geom_col() makes bar charts")
print("- aes(x = , y = ) tells R what goes on each axis")

# ✨ Challenge: Create your own plot!
# Fill in your own data and create a plot:

my_categories <- c("___", "___", "___")  # Fill in 3 things you want to compare
my_values <- c(___, ___, ___)  # Fill in numbers for each thing

# Uncomment the lines below and run them:
# my_plot <- ggplot() + 
#   geom_col(aes(x = my_categories, y = my_values))
# print(my_plot)

print("🎉 Amazing! You've created your first visualizations!")
print("🎨 Next, we'll learn about data tables to organize our information better!")