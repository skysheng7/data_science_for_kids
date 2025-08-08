# 🔮 Day 3 Spell Solutions

This file contains solutions to all Day 3 spells and their practice challenges.

## Spell 1: Loading Data Magic

### Complete Solution Code:
```R
library(readr)
library(dplyr)

# Load the creature data - using practice data first
creature_data <- read.csv("datasets/creature_of_sky.csv")
# For later: creature_data <- read.csv("datasets/creatures.csv")
print("Data loaded successfully!")

# Explore the data
head(creature_data)
nrow(creature_data)
ncol(creature_data)
names(creature_data)
```

### Expected Output:
```R
# For head(creature_data) using creature_of_sky.csv:
  Timestamp           What.is.your.wizard.name What.is.your.magical.creature.s.name
1 2025/08/06 3:23:30 PM MDT                             sky                            alita
2 2025/08/06 3:36:28 PM MDT                             Sky                            stark
3 2025/08/06 3:37:56 PM MDT                             SKY                        oreo king
4 2025/08/06 3:39:57 PM MDT                     i am a robot         i am not a good creature
5 2025/08/06 3:41:53 PM MDT               HELLO who are you?        I AM JUST A CREATURE

# For nrow(creature_data):
[1] 5

# For ncol(creature_data):
[1] 9

# For names(creature_data):
[1] "Timestamp"                                                                
[2] "What.is.your.wizard.name."                                               
[3] "What.is.your.magical.creature.s.name."                                  
[4] "What.type.of.creature.is.it."                                           
[5] "How.old.is.your.creature..please.enter.number.only.."                   
[6] "On.a.scale.of.1.10..how.powerful.is.its.magic."                        
[7] "Does.your.creature.have.wings."                                         
[8] "What.is.its.primary.magical.element."                                   
[9] "What.superpower.does.this.creature.has."
```

---

## Spell 2: Select and Filter Magic

### Challenge Solutions:

**Challenge 1: Select only creature_name and creature_age**
```R
# creature_data <- read.csv("datasets/creature_of_sky.csv")  # Practice data
creature_data <- read.csv("datasets/creatures.csv")  # Your real creature data

creature_basics <- select(creature_data, creature_name, creature_age)
print(creature_basics)
```

**Challenge 2: Filter for creatures older than 100 years**
```R
older_creatures <- filter(creature_data, creature_age > 100)
print(older_creatures)
```

**Challenge 3: Find dragons and show only their names**
```R
dragon_names <- creature_data %>%
  filter(creature_type == "dragon") %>%
  select(creature_name)
print(dragon_names)
```

---

## Spell 3: Grouping and Counting Magic

### Challenge Solutions:

**Challenge 1: Create age_group column**
```R
creatures_with_age_group <- mutate(creature_data, 
                                   age_group = ifelse(creature_age > 100, "Old", "Young"))
print(creatures_with_age_group)
```

**Challenge 2: Group by age_group and count**
```R
age_counts <- creatures_with_age_group %>%
  group_by(age_group) %>%
  summarize(count = n())
print(age_counts)
```

---

## Spell 4: Pipeline Magic

### Challenge Solutions:

**Challenge: Use a pipeline to filter, select, and arrange**
```R
challenge_result <- creature_data %>%
  filter(magic_power > 8) %>%
  select(creature_name, creature_type) %>%
  arrange(creature_name)
print(challenge_result)
```

---

<!-- Removed previous mismatched section -->

---

## Spell 5: Histogram Magic

### Challenge Solutions:

**Challenge 1: Create a histogram of creature ages**
```R
library(ggplot2)

age_histogram <- ggplot(creature_data, aes(x = creature_age)) +
  geom_histogram(bins = 5, fill = "purple", color = "black") +
  labs(title = "How Old Are Our Magical Creatures?",
       x = "Age in Years",
       y = "Number of Creatures")
print(age_histogram)
```

**Challenge 2: Histogram of magic power levels**
```R
power_histogram <- ggplot(creature_data, aes(x = magic_power)) +
  geom_histogram(bins = 10, fill = "gold", color = "darkred") +
  labs(title = "How Powerful Are Our Creatures?",
       x = "Magic Power (1-10)",
       y = "Number of Creatures")
print(power_histogram)
```

**Challenge 3: Histogram with different colors for winged vs non-winged**
```R
wings_histogram <- ggplot(creature_data, aes(x = magic_power, fill = has_wings)) +
  geom_histogram(bins = 8, color = "black", position = "dodge") +
  labs(title = "Magic Power by Wing Status",
       x = "Magic Power",
       y = "Number of Creatures",
       fill = "Has Wings")
print(wings_histogram)
```

---

## Spell 6: Scatter Plot Magic

### Challenge Solutions:

**Challenge 1: Age vs Magic Power relationship**
```R
age_power_scatter <- ggplot(creature_data, aes(x = creature_age, y = magic_power)) +
  geom_point(size = 4, color = "blue") +
  labs(title = "Do Older Creatures Have More Magic?",
       x = "Age in Years",
       y = "Magic Power Level")
print(age_power_scatter)
```

**Challenge 2: Colored by creature type**
```R
type_scatter <- ggplot(creature_data, aes(x = creature_age, y = magic_power, color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Age vs Magic Power by Creature Type",
       x = "Age in Years",
       y = "Magic Power Level",
       color = "Creature Type")
print(type_scatter)
```

**Challenge 3: Size by magic power, color by wings**
```R
advanced_scatter <- ggplot(creature_data, aes(x = creature_age, y = magic_power, 
                                            color = has_wings, size = magic_power)) +
  geom_point(alpha = 0.7) +
  labs(title = "Complex Creature Analysis",
       x = "Age in Years",
       y = "Magic Power Level",
       color = "Has Wings",
       size = "Magic Power")
print(advanced_scatter)
```

---

## Spell 7: Bar Chart Magic

### Challenge Solutions:

**Challenge: Create a bar chart showing average age for each creature type**
```R
age_totals <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_age = mean(creature_age))

age_bar_chart <- ggplot(age_totals, aes(x = creature_type, y = average_age)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Average Age by Creature Type",
       x = "Creature Type",
       y = "Average Age (Years)")
print(age_bar_chart)
```

---

## Spell 8: Team Project Example Solutions

### Creature Power Mystery Solutions:

**Which creature type has the highest average magic power?**
```R
creature_data %>%
  group_by(creature_type) %>%
  summarize(avg_power = mean(magic_power)) %>%
  arrange(desc(avg_power)) %>%
  head(1)
```

**Do winged creatures tend to be more powerful?**
```R
wing_power_comparison <- creature_data %>%
  group_by(has_wings) %>%
  summarize(avg_power = mean(magic_power))

ggplot(wing_power_comparison, aes(x = has_wings, y = avg_power, fill = has_wings)) +
  geom_col() +
  labs(title = "Average Magic Power: Winged vs Non-Winged",
       x = "Has Wings",
       y = "Average Magic Power")
```

### Age and Magic Mystery Solutions:

**Are older creatures more magical?**
```R
age_magic_plot <- ggplot(creature_data, aes(x = creature_age, y = magic_power)) +
  geom_point(size = 4, color = "purple") +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Do Older Creatures Have More Magic?",
       x = "Age in Years", 
       y = "Magic Level")
print(age_magic_plot)

# Calculate correlation
correlation <- cor(creature_data$creature_age, creature_data$magic_power)
print(paste("Correlation between age and magic power:", correlation))
```

**What does the distribution of magic power look like?**
```R
magic_hist <- ggplot(creature_data, aes(x = magic_power)) +
  geom_histogram(bins = 8, fill = "gold", color = "black") +
  labs(title = "Magic Power Distribution",
       x = "Magic Power",
       y = "Number of Creatures")
print(magic_hist)
```

### Elemental Balance Mystery Solutions:

**Which element is most common?**
```R
creature_data %>%
  group_by(element) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
```

**Do certain creature types prefer certain elements?**
```R
element_type_analysis <- creature_data %>%
  group_by(creature_type, element) %>%
  summarize(count = n()) %>%
  arrange(creature_type, desc(count))

# Visualization
ggplot(creature_data, aes(x = creature_type, fill = element)) +
  geom_bar(position = "fill") +
  labs(title = "Element Distribution by Creature Type",
       x = "Creature Type",
       y = "Proportion",
       fill = "Element") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

### Additional Dataset Solutions:

**Magical Pets Analysis:**
```R
pets_data <- read.csv("datasets/magical_pets.csv")

# 1) Which favorite treat is most popular among pets?
pets_data %>%
  group_by(favorite_treat) %>%
  summarize(count = n()) %>%
  arrange(desc(count))

# 2) Do pets who like that treat also tend to have higher magic levels?
pets_data %>%
  group_by(favorite_treat) %>%
  summarize(average_magic = mean(magic_level)) %>%
  arrange(desc(average_magic))

# 3) Which pet type has the highest average magic level?
pets_data %>%
  group_by(pet_type) %>%
  summarize(average_magic = mean(magic_level), count = n()) %>%
  arrange(desc(average_magic))

# Scatter: Are older pets more magical?
ggplot(pets_data, aes(x = age_years, y = magic_level, color = pet_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Pets More Magical?",
       x = "Age (years)", y = "Magic Level", color = "Pet Type")

# Histogram: Magic level distribution
ggplot(pets_data, aes(x = magic_level)) +
  geom_histogram(bins = 8, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Pet Magic Levels",
       x = "Magic Level", y = "Number of Pets")
```

**Creature Sightings Analysis:**
```R
creatures_sightings <- read.csv("datasets/creature_sightings.csv")

# 1) Which location has the most creature sightings?
creatures_sightings %>%
  group_by(location) %>%
  summarize(total_sightings = n()) %>%
  arrange(desc(total_sightings))

# 2) What's the rarest creature type (lowest average rarity_score)?
creatures_sightings %>%
  group_by(creature_type) %>%
  summarize(average_rarity = mean(rarity_score), count = n()) %>%
  arrange(average_rarity) %>%
  head(1)

# 3) Which creature type appears most often overall?
creatures_sightings %>%
  group_by(creature_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))

# Scatter: Are rarer creatures seen more by expert photographers?
ggplot(creatures_sightings, aes(x = photographer_level, y = rarity_score, color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Rarity vs Photographer Skill",
       x = "Photographer Level", y = "Rarity Score", color = "Creature Type")

# Histogram: Rarity score distribution
ggplot(creatures_sightings, aes(x = rarity_score)) +
  geom_histogram(bins = 8, fill = "plum", color = "black") +
  labs(title = "Distribution of Rarity Scores",
       x = "Rarity Score", y = "Number of Sightings")
```

**Magic School Analysis:**
```R
school_data <- read.csv("datasets/magic_school_grades.csv")

# 1) Which subject do students struggle with most? (lowest average)
avg_by_subject <- school_data %>%
  summarize(
    avg_magic = mean(magic_score),
    avg_potion = mean(potion_score),
    avg_flying = mean(flying_score)
  )
avg_by_subject

# 2) Who are the top students by overall score?
ranked <- school_data %>%
  mutate(overall = (magic_score + potion_score + flying_score) / 3) %>%
  arrange(desc(overall))
head(ranked, 5)

# 3) What's the average overall score in each house?
house_avg <- ranked %>%
  group_by(house) %>%
  summarize(average_overall = mean(overall)) %>%
  arrange(desc(average_overall))
house_avg

# Scatter: Is potion score related to flying score?
ggplot(school_data, aes(x = potion_score, y = flying_score, color = house)) +
  geom_point(size = 4) +
  labs(title = "Potion vs Flying Scores",
       x = "Potion Score", y = "Flying Score", color = "House")

# Histogram: Magic score distribution
ggplot(school_data, aes(x = magic_score)) +
  geom_histogram(bins = 8, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Magic Scores",
       x = "Magic Score", y = "Number of Students")
```