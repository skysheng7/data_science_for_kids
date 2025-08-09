# 🔮 Day 3 - Spell 8D: Team Project - Magic School Mystery (uses magic_school_grades.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
library(gridExtra)
school_data <- read.csv("datasets/magic_school_grades.csv")

print("🔍 Evidence loaded from magic_school_grades.csv")
head(school_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) What's the distribution of scores for each subject? (3 histograms)
# 2) Do people who have a pet have better magic scores?
# 3) Is there a relationship between potion score and flying score? (scatter plot)

########################################################
# 1) What's the distribution of scores for each subject? (3 histograms)

# TODO: Fill in the ... below to solve the mysteries!

# Create 3 histograms stacked on top of each other
# Magic score
magic_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "#d578f2fc", color = "black", alpha = 0.7) +
  labs(title = "Magic Score Distribution", x = "Magic Score", y = "Count")

# Potion score
potion_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "#87d31d", color = "black", alpha = 0.7) +
  labs(title = "Potion Score Distribution", x = "Potion Score", y = "Count")

# Flying score
flying_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "#58c4ef", color = "black", alpha = 0.7) +
  labs(title = "Flying Score Distribution", x = "Flying Score", y = "Count")

# Arrange the three histograms in a 3x1 grid (3 rows, 1 column)
grid_plot <- grid.arrange(magic_hist, potion_hist, flying_hist, nrow = 3, ncol = 1)
print(grid_plot)

########################################################
# 2) Do people who have a pet have better magic scores?

# TODO: Fill in the ... below to solve the mysteries!

# Compare magic scores between pet owners and non-pet owners
pet_comparison <- school_data %>%
  group_by(...) %>%
  summarize(avg_magic = mean(...), count = n())
print(pet_comparison)

# Create a boxplot to visualize the difference
pet_plot <- ggplot(school_data, aes(x = has_pet, y = ..., fill = has_pet)) +
  geom_boxplot(color = "black") +
  labs(title = "Magic Scores: Pet Owners vs Non-Pet Owners", 
       x = "Has Pet", y = "Magic Score", fill = "Has Pet")
print(pet_plot)

########################################################
# 3) Is there a relationship between potion score and flying score? (scatter plot)

# TODO: Fill in the ... below to solve the mysteries!

# Create scatter plot to see relationship
pf_scatter <- ggplot(school_data, aes(x = ..., y = ..., color = house)) +
  geom_point(size = 4, alpha = 0.7) +
  labs(title = "Potion vs Flying Scores",
       x = "Potion Score", y = "Flying Score", color = "House") +
  theme_minimal()
print(pf_scatter)

########################################################
# ✨ Challenge (from scratch)
# Students from which house has the best score on average?
# Hint: Calculate overall average score for each house and compare them!
# You'll need to use group_by(), summarize(), and maybe mutate() to create an overall score first.

