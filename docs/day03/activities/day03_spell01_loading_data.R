# 🔮 Day 3 - Spell 1: Loading Data Magic

# Welcome young data wizard! Today we learn to open data treasure chests!
# Think of CSV files like boxes full of interesting information

########################################################
# Step 1: Load our magical toolbox
# These are like apps that give R new powers!

library(readr)  # Helps us read CSV files
library(dplyr)  # Helps us explore data

print("✨ Toolbox loaded! Ready for data magic!")

########################################################
# Step 2: Open our first data treasure chest

# 💡 What are we doing?
# Loading data from a CSV file (comma-separated values)
# It's like opening a digital treasure chest full of information!

pets_data <- read.csv("datasets/magical_pets.csv")
print("🎉 Data treasure chest opened!")

########################################################
# Step 3: Let's peek inside our treasure chest

# Look at the first few rows (like peeking into the box)
print("👀 First peek at our magical pets:")
head(pets_data)

########################################################
# Step 4: Count our treasures

# How many pets do we have? (count the rows)
num_pets <- nrow(pets_data)
print(paste("🐾 Total magical pets:", num_pets))

# How many details about each pet? (count the columns)
num_details <- ncol(pets_data)
print(paste("📋 Details per pet:", num_details))

########################################################
# Step 5: What kind of details do we have?

# Show the column names (what information we have about each pet)
print("📝 Information we have about each pet:")
names(pets_data)

########################################################
# 🎈 Your turn to explore!

# Try loading another dataset:
# creatures_data <- read.csv("datasets/creature_sightings.csv")

# YOUR CODE HERE - uncomment the line above and explore!


########################################################
# 💡 Memory Tip: 
# read.csv() = opens data files
# head() = shows first few rows  
# nrow() = counts rows
# ncol() = counts columns
# names() = shows column names