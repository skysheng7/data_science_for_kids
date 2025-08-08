# 🔮 Day 3 - Spell 8C: Team Project - Creature Sightings Mystery (uses creature_sightings.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
creatures_data <- read.csv("datasets/creature_sightings.csv")

print("🔍 Evidence loaded from creature_sightings.csv")
head(creatures_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which location has the most creature sightings?
# 2) What's the rarest creature type (lowest average rarity_score)?
# 3) Which creature type appears most often overall?

########################################################
# TODO: Fill in the ... below to solve the mysteries!

# 1) Count by location
by_location <- creatures_data %>%
  group_by(location) %>%
  summarize(count = ...) %>%
  arrange(desc(count))
print(by_location)

location_plot <- ggplot(by_location, aes(x = location, y = ...)) +
  geom_col(fill = "steelblue", color = "black") +
  labs(title = "Sightings by Location", x = "Location", y = "Sightings")
print(location_plot)

########################################################
# 2) Rarest creature by average rarity score 
# TODO: Fill in the ... below to solve the mysteries!
rare_by_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(average_rarity = mean(...), count = n()) %>%
  arrange(average_rarity)
print(rare_by_type)

rare_plot <- ggplot(rare_by_type, aes(x = creature_type, y = average_rarity)) +
  geom_col(fill = "plum", color = "black") +
  labs(title = "Average Rarity by Creature Type", x = "Creature Type", y = "Average Rarity")
print(rare_plot)

########################################################
# 3) Most frequent creature type
# TODO: Fill in the ... below to solve the mysteries!
freq_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(freq_type)

freq_plot <- ggplot(freq_type, aes(x = ..., y = count)) +
  geom_col(fill = "gold", color = "black") +
  labs(title = "Most Frequently Sighted Creatures", x = "Creature Type", y = "Sightings")
print(freq_plot)


########################################################
# ✨ Challenge (code from scratch)
# Create a plot comparing average rarity by time_of_day.
# Hint: group_by(time_of_day) then summarize(mean(rarity_score)).


########################################################
# Bonus: Explore with a scatter plot and histogram

# 4) Scatter plot: Are rarer creatures seen more by expert photographers?
rarity_vs_skill <- ggplot(creatures_data, aes(x = photographer_level, y = ..., color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Rarity vs Photographer Skill",
       x = "Photographer Level", y = "Rarity Score", color = "Creature Type")
print(rarity_vs_skill)

# 5) Histogram: What times of day have higher rarity scores?
rarity_hist <- ggplot(creatures_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "...", color = "black") +
  labs(title = "Distribution of Rarity Scores",
       x = "Rarity Score", y = "Number of Sightings")
print(rarity_hist)
