# 🔮 Day 3 - Spell 8: Team Data Detective Project

# Work with a partner to solve a data mystery!
# Use all your new data magic skills together

########################################################
# 🕵️‍♀️ Mission: Choose Your Mystery!

# Pick ONE mystery to solve with your partner:
# 1. Magical Pets Mystery
# 2. Creature Sightings Mystery  
# 3. Magic School Mystery

########################################################
# Step 1: Load your detective toolkit

library(dplyr)
library(ggplot2)

print("🔍 Detective toolkit loaded!")
print("👫 Ready to solve mysteries with your partner!")

########################################################
# Mystery Option 1: Magical Pets Investigation

print("🐾 MYSTERY 1: The Case of the Magical Pets")
print("Questions to solve:")
print("- Which pet has the highest magic level?")
print("- Are older pets more magical?")
print("- What's the most common pet type?")

# Load the data
pets_data <- read.csv("datasets/magical_pets.csv")

# Start your investigation here!
print("🔍 First, let's peek at our evidence:")
head(pets_data)

# YOUR DETECTIVE WORK HERE:
# Use filter(), select(), group_by(), summarize()
# Create at least one visualization

########################################################
# Mystery Option 2: Creature Sightings Investigation

print("👾 MYSTERY 2: The Case of the Mysterious Creatures")
print("Questions to solve:")
print("- Which location has the most creature sightings?")
print("- What's the rarest creature?")
print("- Which creature type appears most often?")

# Uncomment these lines if you choose this mystery:
# creatures_data <- read.csv("datasets/creature_sightings.csv")
# print("🔍 Evidence from creature sightings:")
# head(creatures_data)

# YOUR DETECTIVE WORK HERE:

########################################################
# Mystery Option 3: Magic School Investigation

print("🏫 MYSTERY 3: The Case of the Magic School Grades")
print("Questions to solve:")
print("- Which subject do students struggle with most?")
print("- Who are the top students?")
print("- What's the average grade in each subject?")

# Uncomment these lines if you choose this mystery:
# school_data <- read.csv("datasets/magic_school_grades.csv")
# print("🔍 Evidence from magic school:")
# head(school_data)

# YOUR DETECTIVE WORK HERE:

########################################################
# Step 2: Investigation Template

# Use this template for ANY mystery you choose:

# 1. EXPLORE: Look at your data
# head(your_data)
# names(your_data)
# summary(your_data)

# 2. FILTER: Find specific clues
# important_clues <- filter(your_data, some_condition)

# 3. SELECT: Pick important information
# key_info <- select(important_clues, important_columns)

# 4. GROUP AND SUMMARIZE: Count and calculate
# summary_stats <- your_data %>%
#   group_by(some_group) %>%
#   summarize(count = n(), average = mean(some_number))

# 5. VISUALIZE: Create a plot to show your findings
# mystery_plot <- ggplot(your_data, aes(x = ..., y = ...)) +
#   geom_point() +  # or geom_col() or geom_histogram()
#   labs(title = "Your Discovery Title",
#        x = "X-axis label",
#        y = "Y-axis label")

########################################################
# Step 3: Present Your Findings!

# When you're done investigating:
# 1. What did you discover?
# 2. What does your visualization show?
# 3. What story does your data tell?

print("🎉 Great detective work!")
print("👥 Share your findings with the class!")

########################################################
# 💡 Detective Tips:
# - Work together! Two detectives are better than one
# - Ask lots of questions about your data
# - Try different visualizations to see patterns
# - Don't be afraid to experiment
# - The best discoveries often come from unexpected questions!