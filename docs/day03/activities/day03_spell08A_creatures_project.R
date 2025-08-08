# 🔮 Day 3 - Spell 8A: Team Project - Creatures Mystery (uses creatures.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
creature_data <- read.csv("datasets/creatures.csv")

print("🔍 Evidence loaded from creatures.csv")
head(creature_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which creature type has the highest average magic power?
# 2) Do winged creatures tend to be more powerful?
# 3) Are older creatures more magical?

########################################################
# 🧭 Starter template (fill in the ...)

# 1) Average magic by creature type
avg_magic_by_type <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_magic = mean(magic_power)) %>%
  arrange(desc(average_magic))
print(avg_magic_by_type)

avg_magic_plot <- ggplot(avg_magic_by_type, aes(x = creature_type, y = average_magic)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Average Magic by Creature Type",
       x = "Creature Type", y = "Average Magic Power")
print(avg_magic_plot)

########################################################
# 2) Compare winged vs non-winged
winged_compare <- creature_data %>%
  group_by(has_wings) %>%
  summarize(average_magic = mean(magic_power), count = n())
print(winged_compare)

winged_plot <- ggplot(winged_compare, aes(x = has_wings, y = average_magic, fill = has_wings)) +
  geom_col(color = "black") +
  labs(title = "Do Winged Creatures Have More Magic?",
       x = "Has Wings?", y = "Average Magic Power", fill = "Has Wings")
print(winged_plot)

########################################################
# 3) Relationship between age and magic
age_magic_plot <- ggplot(creature_data, aes(x = creature_age, y = magic_power, color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Creatures More Magical?",
       x = "Age (years)", y = "Magic Power", color = "Creature Type")
print(age_magic_plot)

########################################################
# ✨ Challenge (from scratch)
# Create your own question and answer it with code and a plot.
# Example ideas:
# - Which element has the highest average magic power?
# - Which three creatures have the highest magic power?

########################################################
# 🧩 Template (fill in the ...)

# template_avg_magic_by_type <- creature_data %>%
#   group_by(...) %>%
#   summarize(average_magic = mean(...)) %>%
#   arrange(desc(average_magic))

# template_winged_compare <- creature_data %>%
#   group_by(...) %>%
#   summarize(average_magic = mean(...), count = n())

# template_age_magic_plot <- ggplot(creature_data, aes(x = ..., y = ..., color = ...)) +
#   geom_point(size = ...) +
#   labs(title = "...", x = "...", y = "...", color = "...")

