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
# 🧭 Starter templates (fill in the ...)

# 1) Count by location
by_location <- creatures_data %>%
  group_by(location) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(by_location)

location_plot <- ggplot(by_location, aes(x = location, y = count)) +
  geom_col(fill = "steelblue", color = "black") +
  labs(title = "sightings by location", x = "location", y = "sightings")
print(location_plot)

# 2) Rarest creature by average rarity score
rare_by_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(average_rarity = mean(rarity_score), count = n()) %>%
  arrange(average_rarity)
print(rare_by_type)

# 3) Most frequent creature type
freq_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(freq_type)

########################################################
# 🧩 Template (fill in the ...)

# by_location <- creatures_data %>%
#   group_by(...) %>%
#   summarize(count = n()) %>%
#   arrange(desc(count))

# rare_by_type <- creatures_data %>%
#   group_by(...) %>%
#   summarize(average_rarity = mean(...), count = n()) %>%
#   arrange(average_rarity)

# freq_type <- creatures_data %>%
#   group_by(...) %>%
#   summarize(count = n()) %>%
#   arrange(desc(count))

########################################################
# ✨ Challenge (from scratch)
# Create a plot comparing average rarity by time_of_day.
# Hint: group_by(time_of_day) then summarize(mean(rarity_score)).

