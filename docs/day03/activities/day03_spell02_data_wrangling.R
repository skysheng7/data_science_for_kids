# 🔮 Day 3 - Spell 2: Select and Filter Magic

# Today we learn to pick exactly what we want from our data!
# Like choosing specific toys from a toy box

########################################################
# Step 1: Load our data and toolbox

library(dplyr)  # Our data wrangling toolbox

# Load our magical pets data
pets_data <- read.csv("datasets/magical_pets.csv")
print("🎉 Data loaded! Ready to wrangle!")

########################################################
# Step 2: SELECT Magic - Choose specific columns

# 💡 What is SELECT?
# It's like choosing which toys you want to play with
# You don't need ALL the toys, just the ones for today's game!

# Select only pet names and types
selected_data <- select(pets_data, pet_name, pet_type)
print("🎯 Selected only names and types:")
print(selected_data)

########################################################
# Step 3: FILTER Magic - Keep only certain rows

# 💡 What is FILTER?
# It's like finding only the red cars from all your toy cars
# You keep only the ones that match what you're looking for!

# Keep only dragons
dragons_only <- filter(pets_data, pet_type == "Dragon")
print("🐉 Only dragons:")
print(dragons_only)

# Keep only young pets (age less than 10)
young_pets <- filter(pets_data, age_years < 10)
print("👶 Only young pets:")
print(young_pets)

########################################################
# Step 4: Combine SELECT and FILTER

# Get only names of magical pets with high magic levels
powerful_pet_names <- pets_data %>%
  filter(magic_level > 50) %>%
  select(pet_name, magic_level)

print("⚡ Powerful pets and their magic levels:")
print(powerful_pet_names)

########################################################
# 🎈 Your turn to practice!

# Challenge 1: Select only pet_name and age_years
# YOUR CODE HERE:
# challenge1 <- select(pets_data, ...)

# Challenge 2: Filter for pets older than 50 years
# YOUR CODE HERE:
# challenge2 <- filter(pets_data, ...)

# Challenge 3: Find cats and show only their names
# YOUR CODE HERE:
# challenge3 <- pets_data %>%
#   filter(...) %>%
#   select(...)

########################################################
# 💡 Memory Tip:
# select() = pick columns (like choosing toys)
# filter() = pick rows (like finding red cars)
# Use == for "equals" (not =)
# %>% means "then do this next"