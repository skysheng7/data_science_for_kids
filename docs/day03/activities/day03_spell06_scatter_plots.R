# 🔮 Day 3 - Spell 6: Scatter Plot Magic

# Discover relationships between two things!
# Like asking "Do taller kids have bigger feet?"

########################################################
# Step 1: Load tools and data

library(ggplot2)
library(dplyr)
pets_data <- read.csv("datasets/magical_pets.csv")

print("🔍 Ready to hunt for relationships!")

########################################################
# Step 2: Understanding Scatter Plots

# 💡 What is a Scatter Plot?
# Each dot represents one pet showing TWO pieces of information
# Like showing both height AND weight for each person
# We look for patterns - do the dots make a line? A curve? Random?

print("👀 Let's see if age and magic are related:")
print("Age vs Magic Level for each pet:")
print(select(pets_data, pet_name, age_years, magic_level))

########################################################
# Step 3: Create your first scatter plot

# Do older pets have more magic?
age_vs_magic <- ggplot(pets_data, aes(x = age_years, y = magic_level)) +
  geom_point(size = 4, color = "blue") +
  labs(title = "Do Older Pets Have More Magic?",
       x = "Age in Years",
       y = "Magic Level")

print(age_vs_magic)

########################################################
# Step 4: Add colors for different groups

# Same plot but with different colors for each pet type
colorful_scatter <- ggplot(pets_data, aes(x = age_years, y = magic_level, color = pet_type)) +
  geom_point(size = 5) +
  labs(title = "Age vs Magic by Pet Type",
       x = "Age in Years",
       y = "Magic Level",
       color = "Pet Type")

print(colorful_scatter)

########################################################
# Step 5: Try a different relationship

# Maybe try age vs another variable if you have more data
# For now, let's create a simple comparison

# Create a scatter plot showing each pet's position
pet_positions <- ggplot(pets_data, aes(x = magic_level, y = age_years)) +
  geom_point(size = 6, color = "red") +
  geom_text(aes(label = pet_name), hjust = -0.1) +  # Add pet names
  labs(title = "Pet Magic vs Age with Names",
       x = "Magic Level",
       y = "Age in Years")

print(pet_positions)

########################################################
# 🎈 Your turn to explore!

# Challenge 1: Create a scatter plot with magic_level on x-axis 
# and age_years on y-axis, colored by pet_type
# YOUR CODE HERE:
# my_scatter <- ggplot(pets_data, aes(x = ..., y = ..., color = ...)) +
#   geom_point(size = ...) +
#   labs(title = "...",
#        x = "...",
#        y = "...",
#        color = "...")

# Challenge 2: Try loading the creature_sightings.csv file
# and create a scatter plot with it
# YOUR CODE HERE:

########################################################
# 💡 Memory Tip:
# aes(x = ..., y = ...) sets what goes on each axis
# geom_point() creates the dots
# size = how big the dots are
# color = what color the dots are
# geom_text() adds labels to points
# Look for patterns: do dots go up? down? scattered?