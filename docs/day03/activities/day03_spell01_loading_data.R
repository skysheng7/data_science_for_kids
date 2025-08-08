# 🔮 Day 3 - Spell 1: Loading Data Magic

# Welcome young data wizard! Today we learn to open data treasure chests!
# Think of CSV files like boxes full of interesting information

########################################################
# Step 1: Load our magical toolbox
# These are like apps that give R new powers!

library(dplyr)  # Helps us explore data

print("✨ Toolbox loaded! Ready for data magic!")

########################################################
# Step 2: Open our first data treasure chest

# 💡 What are we doing?
# Loading data from a CSV file (comma-separated values)
# It's like opening a digital treasure chest full of information!

# For our class demo, we'll first load the raw creatures data collected from SKY!
creatures_raw <- read.csv("datasets/creature_of_sky.csv")
print("🎉 Raw creatures data from Sky loaded!")

# 🎈Try loading the cleaned dataset once we've run the cleaning script:
# creatures_raw <- read.csv("datasets/creatures.csv")
# uncomment the line above and explore!

########################################################
# Step 3: Let's peek inside our treasure chest

# Look at the first few rows (like peeking into the box)
print("👀 First peek at our raw creature data:")
head(creatures_raw)

########################################################
# Step 4: Let's peek inside our treasure chest

# Look at the last few rows (like peeking into the box)
print("👀 Last peek at our raw creature data:")
tail(creatures_raw)

########################################################
# Step 4: Count our treasures

# How many responses do we have? (count the rows)
num_rows <- nrow(creatures_raw)
print(paste("🧙 Total number of creatures:", num_rows))

# How many details about each creature? (count the columns)
num_details <- ncol(creatures_raw)
print(paste("📋 Number of details per creature:", num_details))

########################################################
# Step 5: What kind of details do we have?

# Show the column names (what information we have about each response)
print("📝 Columns in our raw creatures data:")
names(creatures_raw)


########################################################
# 💡 Memory Tip: 
# read.csv() = opens data files
# head() = shows first few rows  
# nrow() = counts rows
# ncol() = counts columns
# names() = shows column names