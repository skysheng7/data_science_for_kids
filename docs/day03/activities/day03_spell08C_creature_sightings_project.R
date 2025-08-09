# 🔮 Day 3 - Spell 8C: Team Project - Creature Sightings Mystery (uses creature_sightings.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
creatures_data <- read.csv("../datasets/creature_sightings.csv")

print("🔍 Evidence loaded from creature_sightings.csv")
head(creatures_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which location has the most creature sightings?
# 2) What's the rarest creature type (lowest average rarity_score)?
# 3) What time of the day would you most likely to encounter a creature?
# 4) Is there a relationship between rarity score and photographer level? (scatter plot)

########################################################
# 1) Which location has the most creature sightings?
# TODO: Fill in the ... below to solve the mysteries!

# Count by location
by_location <- creatures_data %>%
  group_by(location) %>%
  summarize(count = ...) %>%
  arrange(desc(count))
print(by_location)

location_plot <- ggplot(by_location, aes(x = location, y = ...)) +
  geom_col(fill = "steelblue", color = "black") +
  labs(title = "Sightings by Location", x = "Location", y = "Sightings")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19),
        axis.text.x = element_text(angle = 60, hjust = 1))
print(location_plot)

########################################################
# 2) What's the rarest creature type (lowest average rarity_score)

# TODO: Fill in the ... below to solve the mysteries!

# Rarest creature by average rarity score 
rare_by_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(average_rarity = mean(...), count = n()) %>%
  arrange(average_rarity)
print(rare_by_type)

rare_plot <- ggplot(rare_by_type, aes(x = creature_type, y = average_rarity)) +
  geom_col(fill = "plum", color = "black") +
  labs(title = "Average Rarity by Creature Type", x = "Creature Type", y = "Average Rarity")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19),
        axis.text.x = element_text(angle = 60, hjust = 1))
print(rare_plot)

########################################################
# 3) What time of the day would you most likely to encounter a creature?

# TODO: Fill in the ... below to solve the mysteries!

# Count by time of day
by_time <- creatures_data %>%
  group_by(...) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(by_time)

time_plot <- ggplot(by_time, aes(x = time_of_day, y = ...)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Creature Sightings by Time of Day", x = "Time of Day", y = "Number of Sightings")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19),
        axis.text.x = element_text(angle = 60, hjust = 1))
print(time_plot)

########################################################
# 4) Is there a relationship between rarity score and photographer level? (scatter plot)

# TODO: Fill in the ... below to solve the mysteries!

# Create scatter plot
scatter_plot <- ggplot(creatures_data, aes(x = ..., y = ...)) +
  geom_point(size = 3, color = "darkgreen", alpha = 0.7) +
  labs(title = "Rarity Score vs Photographer Level", 
       x = "Photographer Level", 
       y = "Rarity Score") +
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(scatter_plot)


