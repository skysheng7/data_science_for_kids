# 🔮 Day 3 - Spell 3: Grouping and Counting Magic

# Learn to sort data into groups and count things!
# Like sorting candy by color and counting each pile

########################################################
# Step 1: Load data and tools

library(dplyr)
pets_data <- read.csv("datasets/magical_pets.csv")
print("🎉 Ready to group and count!")

########################################################
# Step 2: GROUP BY Magic - Sort into piles

# 💡 What is GROUP BY?
# It's like sorting your candy by color - all reds together, all blues together!

# Group pets by their type and count how many of each
pet_counts <- pets_data %>%
  group_by(pet_type) %>%
  summarize(count = n())

print("📊 How many of each pet type:")
print(pet_counts)

########################################################
# Step 3: MUTATE Magic - Create new information

# 💡 What is MUTATE?
# It's like adding a new sticker to each trading card
# You create something new based on what's already there!

# Add a column for age in human years (divide by 10)
pets_with_human_age <- mutate(pets_data, 
                             human_age = age_years / 10)

print("👶 Pets with human age:")
print(pets_with_human_age)

########################################################
# Step 4: More grouping examples

# Find the average magic level for each pet type
magic_by_type <- pets_data %>%
  group_by(pet_type) %>%
  summarize(average_magic = mean(magic_level))

print("⚡ Average magic by pet type:")
print(magic_by_type)

########################################################
# 🎈 Your turn to practice!

# Challenge 1: Create a new column called "magic_category"
# If magic_level > 50, it should say "High", otherwise "Low"
# YOUR CODE HERE:
# pets_with_category <- mutate(pets_data, 
#                             magic_category = ...)

# Challenge 2: Group by magic_category and count
# YOUR CODE HERE:
# magic_counts <- pets_with_category %>%
#   group_by(...) %>%
#   summarize(...)

########################################################
# 💡 Memory Tip:
# group_by() = sort into groups (like sorting candy)
# summarize() = count or calculate for each group
# mutate() = add new information to each row
# n() = counts how many items in each group
# mean() = calculates the average