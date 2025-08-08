# 🔮 Day 3 - Spell 4: Pipeline Magic

# Learn to chain commands together like magic!
# It's like making a sandwich - first this, then that, then this!

########################################################
# Step 1: Load our data

library(dplyr)
creature_data <- read.csv("datasets/creatures.csv")
print("🎉 Ready to learn pipeline magic with creatures!")

########################################################
# Step 2: The Old Way (messy!)

# This is the messy way - lots of temporary variables
print("😵 The messy old way:")

step1 <- filter(creature_data, creature_age > 50)
step2 <- select(step1, creature_name, creature_type, magic_power)
step3 <- arrange(step2, magic_power)

print("Final result from messy way:")
print(step3)

########################################################
# Step 3: The Magic Pipeline Way!

# 💡 What is the Pipeline %>%?
# It's like a magical slide that passes data from one function to the next!
# Think like making a sandwich: bread %>% peanut butter %>% jelly %>% top slice

print("✨ The magical pipeline way:")

magic_result <- creature_data %>%
  filter(creature_age > 50) %>%
  select(creature_name, creature_type, magic_power) %>%
  arrange(magic_power)

print("Same result but much cleaner:")
print(magic_result)

########################################################
# Step 4: More pipeline examples

# Find the most magical young creatures
young_and_magical <- creature_data %>%
  filter(creature_age < 100) %>%          # Keep young creatures
  filter(magic_power > 8) %>%             # Keep magical ones
  select(creature_name, creature_age, magic_power) %>%  # Pick important info
  arrange(desc(magic_power))              # Sort by magic (highest first)

print("🌟 Young and magical creatures:")
print(young_and_magical)

########################################################
# Step 5: Pipeline with grouping

# Count creatures by type using pipeline
type_counts <- creature_data %>%
  group_by(creature_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))  # Most common types first

print("Creature types from most to least common:")
print(type_counts)

########################################################
# 🎈 Your turn to practice!

# Challenge 1: Create a pipeline that:
# - Filters for creatures with magic_power > 8
# - Selects creature_name and creature_type
# - Arranges by creature_name alphabetically

# YOUR CODE HERE:
challenge_result <- creature_data %>%
  filter(...) %>%
  select(...) %>%
  arrange(...)

########################################################
# 💡 Memory Tip:
# %>% means "then do this next"
# Read pipelines like recipes: first this, then that, then this
# Much cleaner than creating lots of temporary variables
# arrange() sorts data (like putting books in alphabetical order)
# desc() means descending (biggest first)