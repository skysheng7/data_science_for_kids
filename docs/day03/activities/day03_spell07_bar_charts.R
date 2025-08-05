# 🔮 Day 3 - Spell 7: Bar Chart Magic

# Compare different groups and see who wins!
# Bar charts are perfect for competitions and comparisons

########################################################
# Step 1: Load tools and data

library(ggplot2)
library(dplyr)
pets_data <- read.csv("datasets/magical_pets.csv")

print("🏆 Ready for the pet competition!")

########################################################
# Step 2: Understanding Bar Charts

# 💡 What is a Bar Chart?
# It's like having a competition where each bar shows how much each team has
# Longer bars win! Perfect for comparing different groups
# Like comparing how many red cars vs blue cars vs green cars you have

print("🎯 Let's count our pet types:")
print(table(pets_data$pet_type))

########################################################
# Step 3: Create your first bar chart

# Count how many of each pet type we have
pet_counts <- pets_data %>%
  group_by(pet_type) %>%
  summarize(total = n())

print("📊 Pet type counts:")
print(pet_counts)

# Make the bar chart
pet_bar_chart <- ggplot(pet_counts, aes(x = pet_type, y = total)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "How Many of Each Pet Type?",
       x = "Pet Type",
       y = "Number of Pets")

print(pet_bar_chart)

########################################################
# Step 4: Compare average magic levels

# Which pet type has the highest average magic?
magic_by_type <- pets_data %>%
  group_by(pet_type) %>%
  summarize(average_magic = mean(magic_level))

print("⚡ Average magic by pet type:")
print(magic_by_type)

magic_bar_chart <- ggplot(magic_by_type, aes(x = pet_type, y = average_magic)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Which Pet Type is Most Magical?",
       x = "Pet Type",
       y = "Average Magic Level")

print(magic_bar_chart)

########################################################
# Step 5: Make it colorful!

# Different colors for each bar
colorful_bars <- ggplot(pet_counts, aes(x = pet_type, y = total, fill = pet_type)) +
  geom_col(color = "black") +
  labs(title = "Colorful Pet Count Competition",
       x = "Pet Type",
       y = "Number of Pets",
       fill = "Pet Type")

print(colorful_bars)

########################################################
# 🎈 Your turn to compete!

# Challenge 1: Create a bar chart showing the total age
# for each pet type (sum of all ages in each group)
# YOUR CODE HERE:
# age_totals <- pets_data %>%
#   group_by(...) %>%
#   summarize(total_age = sum(...))

# age_bar_chart <- ggplot(age_totals, aes(x = ..., y = ...)) +
#   geom_col(fill = "...", color = "...") +
#   labs(title = "...",
#        x = "...",
#        y = "...")

# Challenge 2: Try creating a bar chart with a different dataset
# Load creature_sightings.csv and count by location
# YOUR CODE HERE:

########################################################
# 💡 Memory Tip:
# geom_col() creates bars for comparisons
# group_by() + summarize() prepares data for bar charts
# fill = color inside bars
# Bars show amounts - longer bars = more of something
# Great for answering "which group has the most?"