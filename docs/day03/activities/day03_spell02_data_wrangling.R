# 🔮 Day 3 - Spell 2: Select and Filter Magic

# Today we learn to pick exactly what we want from our data!
# Like choosing specific toys from a toy box

########################################################
# Step 1: Load our data and toolbox

library(dplyr)  # Our data wrangling toolbox

# Load the cleaned creatures data (created from the form by our cleaning spell)
creature_data <- read.csv("../datasets/creatures.csv")
print("🎉 Creatures data loaded! Ready to wrangle!")

########################################################
# Step 2: SELECT Magic - Choose specific columns

# 💡 What is SELECT?
# It's like choosing which toys you want to play with
# You don't need ALL the toys, just the ones for today's game!

# Select only creature names and types
selected_data <- select(creature_data, creature_name, creature_type)
print("🎯 Selected only names and types:")
print(selected_data)

########################################################
# Step 3: FILTER Magic - Keep only certain rows

# 💡 What is FILTER?
# It's like finding only the red cars from all your toy cars
# You keep only the ones that match what you're looking for!

# Keep only dragons
dragons_only <- filter(creature_data, creature_type == "dragon")
print("🐉 Only dragons:")
print(dragons_only)

# Keep only young creatures (age less than 50)
young_creatures <- filter(creature_data, creature_age < 50)
print("👶 Only young creatures:")
print(young_creatures)

########################################################
# Step 4: Combine SELECT and FILTER

# Get only names of creatures with high magic levels
powerful_creatures <- creature_data %>%
  filter(magic_power > 8) %>%
  select(creature_name, magic_power)

print("⚡ Powerful creatures and their magic levels:")
print(powerful_creatures)

########################################################
# 🎈 Your turn to practice!

# Challenge 1: Select only creature_name and creature_age
# YOUR CODE HERE:
challenge1 <- select(creature_data, ...)

# Challenge 2: Filter for creatures older than 100 years
# YOUR CODE HERE:
challenge2 <- filter(creature_data, ...)

# Challenge 3: Find dragons and show only their names
# YOUR CODE HERE:
challenge3 <- creature_data %>%
  filter(...) %>%
  select(...)

########################################################
# 💡 Memory Tip:
# select() = pick columns (like choosing toys)
# filter() = pick rows (like finding red cars)
# Use == for "equals" (not =)
# %>% means "then do this next"