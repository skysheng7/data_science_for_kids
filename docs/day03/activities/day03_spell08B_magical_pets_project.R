# 🔮 Day 3 - Spell 8B: Team Project - Magical Pets Mystery (uses magical_pets.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
pets_data <- read.csv("datasets/magical_pets.csv")

print("🔍 Evidence loaded from magical_pets.csv")
head(pets_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which favorite treat is most popular among pets?
# 2) Do pets who like that treat also tend to have higher magic levels?
# 3) Which pet type has the highest average magic level?

########################################################
# TODO: Fill in the ... below to solve the mysteries!

# 1) Count by favorite treat
treat_counts <- pets_data %>%
  group_by(favorite_treat) %>%
  summarize(count = ...) %>%
  arrange(desc(count))
print(treat_counts)

treat_bar <- ggplot(treat_counts, aes(x = ..., y = ...)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Most Popular Favorite Treats",
       x = "Favorite Treat", y = "Number of Pets")
print(treat_bar)

########################################################
# 2) Average magic by favorite treat 
# TODO: Fill in the ... below to solve the mysteries!
treat_magic <- pets_data %>%
  group_by(favorite_treat) %>%
  summarize(average_magic = mean(...)) %>%
  arrange(desc(average_magic))
print(treat_magic)

treat_magic_bar <- ggplot(treat_magic, aes(x = favorite_treat, y = ...)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Average Magic by Favorite Treat",
       x = "Favorite Treat", y = "Average Magic Level")
print(treat_magic_bar)

########################################################
# 3) Average magic by pet type 
# TODO: Fill in the ... below to solve the mysteries!
type_magic <- pets_data %>%
  group_by(...) %>%
  summarize(average_magic = mean(magic_level), count = n()) %>%
  arrange(desc(average_magic))
print(type_magic)

type_magic_bar <- ggplot(type_magic, aes(x = pet_type, y = average_magic)) +
  geom_col(fill = "skyblue", color = "black") +
  labs(title = "Which Pet Type is the Most Magical?",
       x = "Pet Type", y = "Average Magic Level")
print(type_magic_bar)

########################################################
# ✨ Challenge (code from scratch)
# Are older pets more magical?
# Hint: scatter plot might help you solve the mystery!

########################################################
# Bonus: Visualize with a scatter plot and a histogram

# 4) Scatter plot: Are older pets more magical?
pets_scatter <- ggplot(pets_data, aes(x = ..., y = ..., color = pet_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Pets More Magical?",
       x = "Age (years)", y = "Magic Level", color = "Pet Type")
print(pets_scatter)

# 5) Histogram: What does the distribution of magic levels look like?
pets_magic_hist <- ggplot(pets_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "...", color = "black") +
  labs(title = "Distribution of Pet Magic Levels",
       x = "Magic Level", y = "Number of Pets")
print(pets_magic_hist)
