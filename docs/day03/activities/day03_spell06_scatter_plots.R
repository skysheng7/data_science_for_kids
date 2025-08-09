# 🔮 Day 3 - Spell 6: Scatter Plot Magic

# Discover relationships between two things!
# Like asking "Do taller kids have bigger feet?"

########################################################
# Step 1: Load tools and data

library(ggplot2)
library(dplyr)
creature_data <- read.csv("datasets/creatures.csv")

########################################################
# Step 2: Understanding Scatter Plots

# 💡 What is a Scatter Plot?
# Each dot represents one creature showing TWO pieces of information
# Like showing both height AND weight for each creature
# We look for patterns - do the dots make a line? A curve? Random?

print("👀 Let's see if age and magic are related:")
print("Age vs Magic Level for each creature:")
print(select(creature_data, creature_name, creature_age, magic_power))

########################################################
# Step 3: Create your first scatter plot

# Do older creatures have more magic?
age_vs_magic <- ggplot(creature_data, aes(x = creature_age, y = magic_power)) +
  geom_point(size = 4, color = "orange") +
  labs(title = "Do Older Creatures Have More Magic?",
       x = "Age in Years",
       y = "Magic Level")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))

print(age_vs_magic)


########################################################
# 🎈 Your turn to explore!

# Challenge 1: Create a scatter plot with creature_age on x-axis 
# and magic_power on y-axis, colored by creature_type
# YOUR CODE HERE:
colorful_scatter <- ggplot(creature_data, aes(x = ..., y = ..., color = ...)) +
  geom_point(size = 5) +
  labs(title = "Age vs Magic by Creature Type",
       x = "Age in Years",
       y = "Magic Level",
       color = "Creature Type")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))

print(colorful_scatter)

########################################################
# 💡 Memory Tip:
# aes(x = ..., y = ...) sets what goes on each axis
# geom_point() creates the dots
# size = how big the dots are
# color = what color the dots are
# geom_text() adds labels to points
# Look for patterns: do dots go up? down? scattered?