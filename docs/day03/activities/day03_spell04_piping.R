# 🔮 Day 3 - Spell 4: Pipeline Magic

# Learn to chain commands together like magic!
# It's like making a sandwich - first this, then that, then this!

########################################################
# Step 1: Load our data

library(dplyr)
pets_data <- read.csv("datasets/magical_pets.csv")
print("🎉 Ready to learn pipeline magic!")

########################################################
# Step 2: The Old Way (messy!)

# This is the messy way - lots of temporary variables
print("😵 The messy old way:")

step1 <- filter(pets_data, age_years > 5)
step2 <- select(step1, pet_name, pet_type, magic_level)
step3 <- arrange(step2, magic_level)

print("Final result from messy way:")
print(step3)

########################################################
# Step 3: The Magic Pipeline Way!

# 💡 What is the Pipeline %>%?
# It's like a magical slide that passes data from one function to the next!
# Think like making a sandwich: bread %>% peanut butter %>% jelly %>% top slice

print("✨ The magical pipeline way:")

magic_result <- pets_data %>%
  filter(age_years > 5) %>%
  select(pet_name, pet_type, magic_level) %>%
  arrange(magic_level)

print("Same result but much cleaner:")
print(magic_result)

########################################################
# Step 4: More pipeline examples

# Find the most magical young pets
young_and_magical <- pets_data %>%
  filter(age_years < 100) %>%          # Keep young pets
  filter(magic_level > 50) %>%         # Keep magical ones
  select(pet_name, age_years, magic_level) %>%  # Pick important info
  arrange(desc(magic_level))           # Sort by magic (highest first)

print("🌟 Young and magical pets:")
print(young_and_magical)

########################################################
# Step 5: Pipeline with grouping

# Count pets by type using pipeline
type_counts <- pets_data %>%
  group_by(pet_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))  # Most common types first

print("📊 Pet types from most to least common:")
print(type_counts)

########################################################
# 🎈 Your turn to practice!

# Challenge 1: Create a pipeline that:
# - Filters for pets with magic_level > 60
# - Selects pet_name and pet_type
# - Arranges by pet_name alphabetically

# YOUR CODE HERE:
# challenge_result <- pets_data %>%
#   filter(...) %>%
#   select(...) %>%
#   arrange(...)

########################################################
# 💡 Memory Tip:
# %>% means "then do this next"
# Read pipelines like recipes: first this, then that, then this
# Much cleaner than creating lots of temporary variables
# arrange() sorts data (like putting books in alphabetical order)
# desc() means descending (biggest first)