# 🔮 Day 3 - Spell 8B: Team Project - Magical Pets Mystery (uses magical_pets.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
pets_data <- read.csv("datasets/magical_pets.csv")

print("🔍 Evidence loaded from magical_pets.csv")
head(pets_data)

########################################################
# 🎯 New question for Magical Pets (as requested):
# Which favorite treat is most popular among pets, and do pets who like that treat
# also tend to have higher magic levels?

########################################################
# 🧭 Starter steps (fill in the ...)

# 1) Count treats
treat_counts <- pets_data %>%
  group_by(favorite_treat) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(treat_counts)

treat_bar <- ggplot(treat_counts, aes(x = favorite_treat, y = count)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Most Popular Favorite Treats",
       x = "Favorite Treat", y = "Number of Pets")
print(treat_bar)

# 2) Average magic by favorite treat
treat_magic <- pets_data %>%
  group_by(favorite_treat) %>%
  summarize(average_magic = mean(magic_level)) %>%
  arrange(desc(average_magic))
print(treat_magic)

treat_magic_bar <- ggplot(treat_magic, aes(x = favorite_treat, y = average_magic)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Average Magic by Favorite Treat",
       x = "Favorite Treat", y = "Average Magic Level")
print(treat_magic_bar)

########################################################
# ✨ Challenge (from scratch)
# Create a plot that shows age distribution (histogram) for the most popular treat.
# Hint: filter() to keep only the most popular treat, then use ggplot() + geom_histogram().

########################################################
# 🧩 Template (fill in the ...)

# most_popular <- treat_counts %>% slice(1) %>% pull(favorite_treat)
# pets_top_treat <- pets_data %>% filter(favorite_treat == most_popular)
# ggplot(pets_top_treat, aes(x = ...)) +
#   geom_histogram(bins = ..., fill = "...", color = "...") +
#   labs(title = "...", x = "...", y = "...")

