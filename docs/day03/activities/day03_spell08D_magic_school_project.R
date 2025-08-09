# 🔮 Day 3 - Spell 8D: Team Project - Magic School Mystery (uses magic_school_grades.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
library(gridExtra)
school_data <- read.csv("../datasets/magic_school_grades.csv")

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
magic_hist <- ggplot(school_data, aes(x = magic_score)) +
  geom_histogram(fill = "#d578f2fc", color = "black", alpha = 0.7) +
  labs(title = "Magic Score Distribution", x = "Magic Score", y = "Count")+
  xlim(0, 100) +
  ylim(0, 18) +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))

# Potion score
potion_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(fill = "#87d31d", color = "black", alpha = 0.7) +
  labs(title = "Potion Score Distribution", x = "Potion Score", y = "Count")+
  xlim(0, 100) +
  ylim(0, 18) +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))

# Flying score
flying_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(fill = "#58c4ef", color = "black", alpha = 0.7) +
  labs(title = "Flying Score Distribution", x = "Flying Score", y = "Count")+
  xlim(0, 100) +
  ylim(0, 18) +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))

# Arrange the three histograms in a 3x1 grid (3 rows, 1 column)
grid_plot <- grid.arrange(magic_hist, potion_hist, flying_hist, nrow = 3, ncol = 1)
print(grid_plot)

########################################################
# 2) Do people who have a pet have better magic scores?

# TODO: Fill in the ... below to solve the mysteries!

# Compare magic scores between pet owners and non-pet owners
pet_comparison <- school_data %>%
  group_by(has_pet) %>%
  summarize(avg_magic = mean(magic_score), count = n())
print(pet_comparison)

# Method 1: Two histograms stacked on top of each other using 2x1 grid
# Filter data for pet owners
pet_owners <- school_data %>% filter(has_pet == TRUE)
non_pet_owners <- school_data %>% filter(has_pet == FALSE)

# Histogram for pet owners
pet_hist <- ggplot(pet_owners, aes(x = magic_score)) +
  geom_histogram(fill = "#87ceeb", color = "black", alpha = 0.7) +
  labs(title = "Magic Scores: Pet Owners", x = "Magic Score", y = "Count") +
  xlim(10, 100) +
  ylim(0, 18) +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))

# Histogram for non-pet owners
no_pet_hist <- ggplot(non_pet_owners, aes(x = ...)) +
  geom_histogram(fill = "#ffb6c1", color = "black", alpha = 0.7) +
  labs(title = "Magic Scores: Non-Pet Owners", x = "Magic Score", y = "Count") +
  xlim(0, 100) +
  ylim(0, 18) +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))

# Arrange histograms in 2x1 grid
hist_grid <- grid.arrange(pet_hist, no_pet_hist, nrow = 2, ncol = 1)
print(hist_grid)



# Method 2: Bar plot showing average magic scores
avg_plot <- ggplot(pet_comparison, aes(x = has_pet, y = avg_magic, fill = has_pet)) +
  geom_col(color = "black", alpha = 0.8) +
  labs(title = "Average Magic Scores: Pet Owners vs Non-Pet Owners", 
       x = "Has Pet", y = "Average Magic Score", fill = "Has Pet") +
  theme_minimal() +
  theme(text = element_text(size = 14),
        plot.title = element_text(size = 18),
        axis.title = element_text(size = 16),
        axis.text = element_text(size = 17))
print(avg_plot)

########################################################
# 3) Is there a relationship between potion score and flying score? (scatter plot)

# TODO: Fill in the ... below to solve the mysteries!

# Create scatter plot to see relationship
pf_scatter <- ggplot(school_data, aes(x = ..., y = ..., color = house)) +
  geom_point(size = 4, alpha = 0.7) +
  labs(title = "Potion vs Flying Scores",
       x = "Potion Score", y = "Flying Score", color = "House") +
  xlim(70, 100) +
  ylim(55, 100) +
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(pf_scatter)

########################################################
# ✨ Challenge (from scratch)
# Students from which house has the best score on average?
# Hint: Calculate overall average score for each house and compare them!
# You'll need to use group_by(), summarize(), and maybe mutate() to create an overall score first.

