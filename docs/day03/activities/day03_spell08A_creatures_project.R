# 🔮 Day 3 - Spell 8A: Team Project - Creatures Mystery (uses creatures.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
creature_data <- read.csv("../datasets/creatures.csv")

print("🔍 Evidence loaded from creatures.csv")
head(creature_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which creature type has the highest average magic power?
# 2) Do winged creatures tend to be more powerful?
# 3) Are older creatures more magical?

########################################################
# 1) Which creature type has the highest average magic power?
# TODO: Fill in the ... below to solve the mysteries!

# Average magic by creature type
avg_magic_by_type <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_magic = mean(...)) %>%
  arrange(desc(...))
print(avg_magic_by_type)

avg_magic_plot <- ggplot(avg_magic_by_type, aes(x = ..., y = ...)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Average Magic by Creature Type",
       x = "Creature Type", y = "Average Magic Power")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(avg_magic_plot)

########################################################
# 2) Do winged creatures tend to be more powerful?

# Compare winged vs non-winged
# TODO: Fill in the ... below to solve the mysteries!
winged_compare <- creature_data %>%
  group_by(has_wings) %>%
  summarize(average_magic = mean(magic_power), count = n())
print(winged_compare)

winged_plot <- ggplot(winged_compare, aes(x = has_wings, y = average_magic, fill = has_wings)) +
  geom_col(color = "black") +
  labs(title = "Do Winged Creatures Have More Magic?",
       x = "Has Wings?", y = "...", fill = "Has Wings")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(winged_plot)

########################################################
# 3) Are older creatures more magical?

# Relationship between age and magic
# TODO: Fill in the ... below to solve the mysteries!
age_magic_plot <- ggplot(creature_data, aes(x = creature_age, y = ..., color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Creatures More Magical?",
       x = "...", y = "Magic Power", color = "Creature Type")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(age_magic_plot)

########################################################
# 4) Bonus: What does the distribution of magic power look like?
# TODO: Make a histogram to see the shape of magic power values
magic_hist <- ggplot(creature_data, aes(x = ...)) +
  geom_histogram(fill = "...", color = "black") +
  labs(title = "Magic Power Distribution",
       x = "Magic Power", y = "Number of Creatures")+
  theme_minimal() +
  theme(text = element_text(size = 16),
        plot.title = element_text(size = 20),
        axis.title = element_text(size = 18),
        axis.text = element_text(size = 19))
print(magic_hist)

########################################################
# ✨ Challenge (writing code from scratch)
# Challenge question 1:
# - Which element has the highest average magic power?

# Write your code here:



########################################################
# ✨ Challenge (writing code from scratch)
# Challenge question 2: 
# - Which three creatures have the highest magic power?

# Write your code here:





