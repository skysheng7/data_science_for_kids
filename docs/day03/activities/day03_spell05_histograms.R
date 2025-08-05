# 🔮 Day 3 - Spell 5: Histogram Magic

# Learn to see the shape of your data!
# Histograms show us patterns like mountains and valleys in our data

########################################################
# Step 1: Load tools and data

library(ggplot2)  # Our plotting magic toolbox
library(dplyr)
pets_data <- read.csv("datasets/magical_pets.csv")

print("🎨 Ready to paint with data!")

########################################################
# Step 2: Understanding Histograms

# 💡 What is a Histogram?
# Imagine you have blocks and you stack them in piles
# Some piles are tall, some are short
# A histogram shows the shape of these piles!

# Let's look at the ages of our pets
print("🔍 Let's explore pet ages:")
print(pets_data$age_years)

########################################################
# Step 3: Create your first histogram

# Show the distribution of pet ages
age_histogram <- ggplot(pets_data, aes(x = age_years)) +
  geom_histogram(bins = 5, fill = "purple", color = "black") +
  labs(title = "How Old Are Our Magical Pets?",
       x = "Age in Years",
       y = "Number of Pets")

print(age_histogram)

########################################################
# Step 4: Try different data

# Look at magic levels
magic_histogram <- ggplot(pets_data, aes(x = magic_level)) +
  geom_histogram(bins = 4, fill = "gold", color = "black") +
  labs(title = "Magic Level Distribution",
       x = "Magic Level",
       y = "Number of Pets")

print(magic_histogram)

########################################################
# Step 5: Make it colorful by groups

# Different colors for different pet types
colorful_histogram <- ggplot(pets_data, aes(x = magic_level, fill = pet_type)) +
  geom_histogram(bins = 4, color = "black") +
  labs(title = "Magic Levels by Pet Type",
       x = "Magic Level",
       y = "Number of Pets",
       fill = "Pet Type")

print(colorful_histogram)

########################################################
# 🎈 Your turn to create!

# Challenge 1: Create a histogram of ages with different colors
# YOUR CODE HERE:
# my_histogram <- ggplot(pets_data, aes(x = ...)) +
#   geom_histogram(bins = 3, fill = "...", color = "...") +
#   labs(title = "...",
#        x = "...",
#        y = "...")

# Challenge 2: Try loading creature_sightings.csv and make a histogram
# of the 'count' column
# YOUR CODE HERE:

########################################################
# 💡 Memory Tip:
# ggplot() starts the plot
# aes(x = column) tells what data to use
# geom_histogram() creates the bars
# bins = number of bars to create
# fill = color inside bars, color = outline color
# labs() adds titles and labels