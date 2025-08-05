# 🔮 Day 2 - Spell 6: Loading Data Magic

# 🎈 Activity: Reading Real Datasets
# 📊 Data is everywhere! Let's learn how to bring it into R

# Load helpful packages
library(readr)    # For reading CSV files
library(dplyr)    # For exploring data

# 🎯 Challenge 1: Create and save sample data
# First, let's create some magical data to work with!

magical_pets <- data.frame(
  pet_name = c("Sparkles", "Thunder", "Whiskers", "Flame", "Bubbles", "Shadow"),
  pet_type = c("Unicorn", "Dragon", "Cat", "Phoenix", "Fish", "Wolf"),
  age_years = c(150, 300, 3, 75, 1, 8),
  magic_level = c(85, 95, 20, 90, 15, 60),
  favorite_treat = c("Rainbow cookies", "Gold coins", "Fish", "Spicy peppers", "Magic algae", "Moon berries")
)

print("🐾 Our Magical Pets Dataset:")
print(magical_pets)

# Save this data to a CSV file (we'll practice reading it back!)
write.csv(magical_pets, "magical_pets.csv", row.names = FALSE)
print("✅ Data saved to magical_pets.csv")

# 🎯 Challenge 2: Read the data back from the file
# This is how you'd normally load data that someone else created

print("\n📁 Reading data from file...")
loaded_pets <- read.csv("magical_pets.csv")
print("✅ Data loaded successfully!")
print(loaded_pets)

# 🔍 Explore what's in our dataset
print("\n🔍 Dataset Exploration:")
print(paste("Number of rows (pets):", nrow(loaded_pets)))
print(paste("Number of columns (attributes):", ncol(loaded_pets)))
print("Column names:")
print(names(loaded_pets))

# See the structure of the data
print("\n📋 Data Structure:")
str(loaded_pets)

# Get a summary of the data
print("\n📊 Data Summary:")
summary(loaded_pets)

# 🎯 Challenge 3: Explore different data types
print("\n🎨 Understanding Data Types:")

# Text data (character)
print("Text columns:")
text_cols <- sapply(loaded_pets, is.character)
print(names(loaded_pets)[text_cols])

# Number data (numeric)
print("Number columns:")
numeric_cols <- sapply(loaded_pets, is.numeric)
print(names(loaded_pets)[numeric_cols])

# 🎯 Challenge 4: Practice with built-in datasets
# R comes with practice datasets! Let's explore one
print("\n🌸 Built-in Dataset: iris (flower data)")
data(iris)  # Load the iris dataset
print("First 6 rows of iris data:")
print(head(iris))

print("\nDataset info:")
print(paste("Rows:", nrow(iris)))
print(paste("Columns:", ncol(iris)))
print("Column names:")
print(names(iris))

# ✨ Advanced Challenge: Load different file types
# Create data in different formats

# JSON-style data (as text for now)
json_pets <- '{"pets": [{"name": "Stardust", "type": "Pegasus", "age": 25}]}'
print("\n🌟 JSON data structure:")
print(json_pets)

# 🎯 Your Turn: Create your own dataset!
# Fill in the blanks to create data about your favorite things
my_favorites <- data.frame(
  item = c("...", "...", "..."),           # Your favorite things
  category = c("...", "...", "..."),       # What type they are
  rating = c(..., ..., ...),               # Rate them 1-10
  years_liked = c(..., ..., ...)           # How long you've liked them
)

print("\n⭐ Your Favorites Dataset:")
print(my_favorites)

# Save your dataset
write.csv(my_favorites, "my_favorites.csv", row.names = FALSE)
print("✅ Your data saved to my_favorites.csv")

# 💡 Memory Tip:
# - read.csv() loads CSV files into R
# - write.csv() saves data from R to CSV files  
# - nrow() counts rows, ncol() counts columns
# - names() shows column names
# - head() shows first few rows
# - summary() gives overview of each column