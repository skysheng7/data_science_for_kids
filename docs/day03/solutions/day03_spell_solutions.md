# 🔮 Day 3 Spell Solutions

This file contains solutions to all Day 3 spells and their practice challenges, matching exactly with the activity files in the activities folder.

---

## Spell 1: Loading Data Magic

This spell teaches basic data loading and exploration with `creatures_raw` from `creature_of_sky.csv`.

### Complete Solution Code:

```R
# Load magical toolbox
library(dplyr)
print("✨ Toolbox loaded! Ready for data magic!")

# Load raw creatures data from Sky's collection
creatures_raw <- read.csv("datasets/creature_of_sky.csv")
print("🎉 Raw creatures data from Sky loaded!")

# Look at first few rows
print("👀 First peek at our raw creature data:")
head(creatures_raw)

# Look at last few rows
print("👀 Last peek at our raw creature data:")
tail(creatures_raw)

# Count our treasures
num_rows <- nrow(creatures_raw)
print(paste("🧙 Total number of creatures:", num_rows))

num_details <- ncol(creatures_raw)
print(paste("📋 Number of details per creature:", num_details))

# Show column names
print("📝 Columns in our raw creatures data:")
names(creatures_raw)
```

---

## Spell 1B: Clean Creatures Data (Optional)

This spell cleans the raw form responses and creates a clean `creatures.csv` file.

### Complete Solution Code:

```R
# Load raw data
raw <- read.csv("datasets/creature_of_sky.csv", stringsAsFactors = FALSE)

# Rename columns to simple, consistent names
clean_names <- raw %>%
  rename(
    wizard_name = What.is.your.wizard.name.,
    creature_name = What.is.your.magical.creature.s.name.,
    creature_type = What.type.of.creature.is.it.,
    creature_age_raw = How.old.is.your.creature..please.enter.number.only...,
    magic_power_raw = On.a.scale.of.1.10..how.powerful.is.its.magic.,
    has_wings_raw = Does.your.creature.have.wings.,
    element = What.is.its.primary.magical.element.,
    superpower = What.superpower.does.this.creature.has.
  )

# Clean and convert data types
cleaned <- clean_names %>%
  mutate(
    creature_name = tolower(trimws(as.character(creature_name))),
    creature_name = ifelse(is.na(creature_name) | creature_name == "", NA, creature_name),
    
    creature_type = tolower(trimws(as.character(creature_type))),
    creature_type = ifelse(is.na(creature_type) | creature_type == "", NA, creature_type),
    
    # Age: coerce to number, drop invalid ages
    creature_age = suppressWarnings(as.numeric(gsub("[^0-9\\-]", "", creature_age_raw))),
    creature_age = ifelse(is.na(creature_age) | creature_age < 0 | creature_age > 1000, NA, creature_age),
    
    # Magic power: coerce to 1-10 range
    magic_power = suppressWarnings(as.numeric(gsub("[^0-9]", "", magic_power_raw))),
    magic_power = ifelse(is.na(magic_power), NA, pmin(pmax(magic_power, 1), 10)),
    
    # Wings: normalize to Yes/No
    has_wings = tolower(trimws(as.character(has_wings_raw))),
    has_wings = ifelse(has_wings %in% c("yes", "y", "true", "1"), "yes",
                 ifelse(has_wings %in% c("no", "n", "false", "0"), "no", NA)),
    
    element = tolower(trimws(as.character(element))),
    wizard_name = tolower(trimws(as.character(wizard_name))),
    superpower = tolower(trimws(as.character(superpower)))
  ) %>%
  select(
    wizard_name, creature_name, creature_type, creature_age,
    magic_power, has_wings, element, superpower
  )

# Remove rows with missing essentials
before_n <- nrow(cleaned)
cleaned <- cleaned %>%
  filter(!is.na(creature_name),
         !is.na(creature_type),
         !is.na(creature_age),
         !is.na(magic_power))
after_n <- nrow(cleaned)
removed_n <- before_n - after_n

print(paste("✅ Kept", after_n, "clean rows; removed", removed_n, "rows with bad/missing values"))

# Save the clean dataset
write.csv(cleaned, "datasets/creatures.csv", row.names = FALSE)
print("💾 Saved clean data to datasets/creatures.csv")
print(head(cleaned, 3))
```

---

## Spell 2: Select and Filter Magic

This spell teaches `select()` and `filter()` functions with 3 practice challenges.

### Main Examples:

```R
# Load cleaned data
library(dplyr)
creature_data <- read.csv("datasets/creatures.csv")
print("🎉 Creatures data loaded! Ready to wrangle!")

# SELECT example - choose specific columns
selected_data <- select(creature_data, creature_name, creature_type)
print("🎯 Selected only names and types:")
print(selected_data)

# FILTER example - keep only certain rows
dragons_only <- filter(creature_data, creature_type == "dragon")
print("🐉 Only dragons:")
print(dragons_only)

young_creatures <- filter(creature_data, creature_age < 50)
print("👶 Only young creatures:")
print(young_creatures)

# Combine SELECT and FILTER
powerful_creatures <- creature_data %>%
  filter(magic_power > 8) %>%
  select(creature_name, magic_power)
print("⚡ Powerful creatures and their magic levels:")
print(powerful_creatures)
```

### Challenge Solutions:

**Challenge 1: Select only creature_name and creature_age**
```R
challenge1 <- select(creature_data, creature_name, creature_age)
print("Challenge 1 - Selected names and ages:")
print(challenge1)
```

**Challenge 2: Filter for creatures older than 100 years**
```R
challenge2 <- filter(creature_data, creature_age > 100)
print("Challenge 2 - Old creatures (age > 100):")
print(challenge2)
```

**Challenge 3: Find dragons and show only their names**
```R
challenge3 <- creature_data %>%
  filter(creature_type == "dragon") %>%
  select(creature_name)
print("Challenge 3 - Dragon names only:")
print(challenge3)
```

---

## Spell 3: Grouping and Counting Magic

This spell teaches `group_by()`, `summarize()`, and `mutate()` functions with 2 practice challenges.

### Main Examples:

```R
# GROUP BY and count example
creature_counts <- creature_data %>%
  group_by(creature_type) %>%
  summarize(count = n())
print("📊 How many of each creature type:")
print(creature_counts)

# MUTATE example - add new information
creatures_with_category <- mutate(creature_data,
                                 power_category = ifelse(magic_power >= 8, "high", "low"))
print("⚡ Creatures with power category:")
print(creatures_with_category)

# Find average magic level for each creature type
magic_by_type <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_magic = mean(magic_power))
print("⚡ Average magic by creature type:")
print(magic_by_type)
```

### Challenge Solutions:

**Challenge 1: Create age_group column**
```R
creatures_with_age_group <- mutate(creature_data, 
                                   age_group = ifelse(creature_age > 100, "Old", "Young"))
print("Challenge 1 - Creatures with age groups:")
print(creatures_with_age_group)
```

**Challenge 2: Group by age_group and count**
```R
age_counts <- creatures_with_age_group %>%
  group_by(age_group) %>%
  summarize(count = n())
print("Challenge 2 - Count by age group:")
print(age_counts)
```

---

## Spell 4: Pipeline Magic

This spell teaches the `%>%` operator for chaining operations with 1 practice challenge.

### Main Examples:

```R
# The Old Way (messy!)
print("😵 The messy old way:")
step1 <- filter(creature_data, creature_age > 50)
step2 <- select(step1, creature_name, creature_type, magic_power)
step3 <- arrange(step2, magic_power)
print("Final result from messy way:")
print(step3)

# The Magic Pipeline Way!
print("✨ The magical pipeline way:")
magic_result <- creature_data %>%
  filter(creature_age > 50) %>%
  select(creature_name, creature_type, magic_power) %>%
  arrange(magic_power)
print("Same result but much cleaner:")
print(magic_result)

# Find the most magical young creatures
young_and_magical <- creature_data %>%
  filter(creature_age < 100) %>%          # Keep young creatures
  filter(magic_power > 8) %>%             # Keep magical ones
  select(creature_name, creature_age, magic_power) %>%  # Pick important info
  arrange(desc(magic_power))              # Sort by magic (highest first)
print("🌟 Young and magical creatures:")
print(young_and_magical)

# Count creatures by type using pipeline
type_counts <- creature_data %>%
  group_by(creature_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))  # Most common types first
print("Creature types from most to least common:")
print(type_counts)
```

### Challenge Solution:

**Challenge: Pipeline that filters for magic_power > 8, selects name and type, arranges by name alphabetically**
```R
challenge_result <- creature_data %>%
  filter(magic_power > 8) %>%
  select(creature_name, creature_type) %>%
  arrange(creature_name)
print("Challenge - Powerful creatures alphabetically:")
print(challenge_result)
```

---

## Spell 5: Histogram Magic

This spell teaches creating histograms with `ggplot2` with 1 practice challenge.

### Main Examples:

```R
library(ggplot2)
print("🎨 Ready to paint with creature data!")

# Explore creature ages
print("🔍 Let's explore creature ages:")
print(creature_data$creature_age)

# Create histogram of creature ages
age_histogram <- ggplot(creature_data, aes(x = creature_age)) +
  geom_histogram(bins = 5, fill = "purple", color = "black") +
  labs(title = "How Old Are Our Magical creatures?",
       x = "Age in Years",
       y = "Number of Creatures")
print(age_histogram)

# Look at magic levels
magic_histogram <- ggplot(creature_data, aes(x = magic_power)) +
  geom_histogram(bins = 4, fill = "gold", color = "black") +
  labs(title = "Magic Level Distribution",
       x = "Magic Level",
       y = "Number of Creatures")
print(magic_histogram)

# Different colors for different creature types
colorful_histogram <- ggplot(creature_data, aes(x = magic_power, fill = creature_type)) +
  geom_histogram(bins = 4, color = "black") +
  labs(title = "Magic Levels by creature Type",
       x = "Magic Level",
       y = "Number of Creatures",
       fill = "Creature Type")
print(colorful_histogram)
```

### Challenge Solution:

**Challenge: Create a histogram of ages with different colors for different creature types**
```R
my_histogram <- ggplot(creature_data, aes(x = creature_age, fill = creature_type)) +
  geom_histogram(bins = 3, color = "black") +
  labs(title = "Age Distribution by Creature Type",
       x = "Age in Years",
       y = "Number of Creatures",
       fill = "Creature Type")
print(my_histogram)
```

---

## Spell 6: Scatter Plot Magic

This spell teaches creating scatter plots to explore relationships with 1 practice challenge.

### Main Examples:

```R
# Show age vs magic data
print("👀 Let's see if age and magic are related:")
print("Age vs Magic Level for each creature:")
print(select(creature_data, creature_name, creature_age, magic_power))

# Create first scatter plot
age_vs_magic <- ggplot(creature_data, aes(x = creature_age, y = magic_power)) +
  geom_point(size = 4, color = "orange") +
  labs(title = "Do Older Creatures Have More Magic?",
       x = "Age in Years",
       y = "Magic Level")
print(age_vs_magic)

# Add colors for different groups
colorful_scatter <- ggplot(creature_data, aes(x = creature_age, y = magic_power, color = creature_type)) +
  geom_point(size = 5) +
  labs(title = "Age vs Magic by Creature Type",
       x = "Age in Years",
       y = "Magic Level",
       color = "Creature Type")
print(colorful_scatter)
```

### Challenge Solution:

**Challenge: Create scatter plot with creature_age on x-axis, magic_power on y-axis, colored by creature_type**
```R
colorful_scatter <- ggplot(creature_data, aes(x = creature_age, y = magic_power, color = creature_type)) +
  geom_point(size = 5) +
  labs(title = "Age vs Magic by Creature Type",
       x = "Age in Years",
       y = "Magic Level",
       color = "Creature Type")
print(colorful_scatter)
```

---

## Spell 7: Bar Chart Magic

This spell teaches creating bar charts for comparisons with 1 practice challenge.

### Main Examples:

```R
print("🏆 Ready for the creature competition!")

# Show creature type counts
print("🎯 Let's count our creature types:")
print(table(creature_data$creature_type))

# Count how many of each creature type
creature_counts <- creature_data %>%
  group_by(creature_type) %>%
  summarize(total = n())
print("📊 Creature type counts:")
print(creature_counts)

# Make the bar chart
creature_bar_chart <- ggplot(creature_counts, aes(x = creature_type, y = total)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "How Many of Each Creature Type?",
       x = "Creature Type",
       y = "Number of Creatures")
print(creature_bar_chart)

# Compare average magic levels
magic_by_type <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_magic = mean(magic_power))
print("⚡ Average magic by creature type:")
print(magic_by_type)

magic_bar_chart <- ggplot(magic_by_type, aes(x = creature_type, y = average_magic)) +
  geom_col(fill = "purple", color = "black") +
  labs(title = "Which Creature Type is Most Magical?",
       x = "Creature Type",
       y = "Average Magic Level")
print(magic_bar_chart)
```

### Challenge Solution:

**Challenge: Create bar chart showing average age for each creature type**
```R
age_totals <- creature_data %>%
  group_by(creature_type) %>%
  summarize(average_age = mean(creature_age))

age_bar_chart <- ggplot(age_totals, aes(x = creature_type, y = average_age)) +
  geom_col(fill = "skyblue", color = "black") +
  labs(title = "Average Age by Creature Type",
       x = "Creature Type",
       y = "Average Age (Years)")
print(age_bar_chart)
```

---

## Spell 8: Team Data Detective Project (Overview)

This is the overview spell that introduces the team project concept.

### Complete Solution Code:

```R
# Load detective toolkit
library(dplyr)
library(ggplot2)
print("🔍 Detective toolkit loaded!")
print("👫 Ready to solve mysteries with your partner!")

# Investigation template examples
print("📋 Investigation Template:")
print("1. EXPLORE: Look at your data")
print("2. FILTER: Find specific clues")
print("3. SELECT: Pick important information")
print("4. GROUP AND SUMMARIZE: Count and calculate")
print("5. VISUALIZE: Create a plot to show your findings")

print("🎉 Great detective work!")
print("👥 Share your findings with the class!")
```

---

## Spell 8A: Team Project - Creatures Mystery

This project uses `creatures.csv` and has 4 questions plus 2 challenges.

### Setup:

```R
# Load tools and data
library(dplyr)
library(ggplot2)
creature_data <- read.csv("datasets/creatures.csv")
print("🔍 Evidence loaded from creatures.csv")
head(creature_data)
```

### Question 1: Which creature type has the highest average magic power?

```R
# Average magic by creature type
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
```

### Question 2: Do winged creatures tend to be more powerful?

```R
# Compare winged vs non-winged
winged_compare <- creature_data %>%
  group_by(has_wings) %>%
  summarize(average_magic = mean(magic_power), count = n())
print(winged_compare)

winged_plot <- ggplot(winged_compare, aes(x = has_wings, y = average_magic, fill = has_wings)) +
  geom_col(color = "black") +
  labs(title = "Do Winged Creatures Have More Magic?",
       x = "Has Wings?", y = "Average Magic Power", fill = "Has Wings")
print(winged_plot)
```

### Question 3: Are older creatures more magical?

```R
# Relationship between age and magic
age_magic_plot <- ggplot(creature_data, aes(x = creature_age, y = magic_power, color = creature_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Creatures More Magical?",
       x = "Age in Years", y = "Magic Power", color = "Creature Type")
print(age_magic_plot)
```

### Question 4: What does the distribution of magic power look like?

```R
# Magic power distribution histogram
magic_hist <- ggplot(creature_data, aes(x = magic_power)) +
  geom_histogram(bins = 8, fill = "gold", color = "black") +
  labs(title = "Magic Power Distribution",
       x = "Magic Power", y = "Number of Creatures")
print(magic_hist)
```

### Challenge Solutions:

**Challenge 1: Which element has the highest average magic power?**
```R
element_magic <- creature_data %>%
  group_by(element) %>%
  summarize(average_magic = mean(magic_power), count = n()) %>%
  arrange(desc(average_magic))
print("Average magic power by element:")
print(element_magic)
```

**Challenge 2: Which three creatures have the highest magic power?**
```R
top_creatures <- creature_data %>%
  arrange(desc(magic_power)) %>%
  select(creature_name, creature_type, magic_power) %>%
  head(3)
print("Top 3 most magical creatures:")
print(top_creatures)
```

---

## Spell 8B: Team Project - Magical Pets Mystery

This project uses `magical_pets.csv` and has 5 questions.

### Setup:

```R
# Load tools and data
library(dplyr)
library(ggplot2)
pets_data <- read.csv("datasets/magical_pets.csv")
print("🔍 Evidence loaded from magical_pets.csv")
head(pets_data)
```

### Question 1: Which favorite treat is most popular among pets?

```R
# Count by favorite treat
treat_counts <- pets_data %>%
  group_by(favorite_treat) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(treat_counts)

# Bar plot to show how many pets like each treat
treat_bar <- ggplot(treat_counts, aes(x = favorite_treat, y = count)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Most Popular Favorite Treats",
       x = "Favorite Treat", y = "Number of Pets")
print(treat_bar)
```

### Question 2: Do pets who like that treat also tend to have higher magic levels?

```R
# Average magic by favorite treat
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
```

### Question 3: Which pet type has the highest average magic level?

```R
# Average magic by pet type
type_magic <- pets_data %>%
  group_by(pet_type) %>%
  summarize(average_magic = mean(magic_level), count = n()) %>%
  arrange(desc(average_magic))
print(type_magic)

type_magic_bar <- ggplot(type_magic, aes(x = pet_type, y = average_magic)) +
  geom_col(fill = "skyblue", color = "black") +
  labs(title = "Which Pet Type is the Most Magical?",
       x = "Pet Type", y = "Average Magic Level")
print(type_magic_bar)
```

### Question 4: Are older pets more magical?

```R
# Scatter plot of age vs magic level
pets_scatter <- ggplot(pets_data, aes(x = age_years, y = magic_level, color = pet_type)) +
  geom_point(size = 4) +
  labs(title = "Are Older Pets More Magical?",
       x = "Age (years)", y = "Magic Level", color = "Pet Type")
print(pets_scatter)
```

### Question 5: What does the distribution of magic levels look like?

```R
# Histogram of magic level distribution
pets_magic_hist <- ggplot(pets_data, aes(x = magic_level)) +
  geom_histogram(bins = 8, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of Pet Magic Levels",
       x = "Magic Level", y = "Number of Pets")
print(pets_magic_hist)
```

---

## Spell 8C: Team Project - Creature Sightings Mystery

This project uses `creature_sightings.csv` and has 4 questions including the new ones added.

### Setup:

```R
# Load tools and data
library(dplyr)
library(ggplot2)
creatures_data <- read.csv("datasets/creature_sightings.csv")
print("🔍 Evidence loaded from creature_sightings.csv")
head(creatures_data)
```

### Question 1: Which location has the most creature sightings?

```R
# Count by location
by_location <- creatures_data %>%
  group_by(location) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(by_location)

location_plot <- ggplot(by_location, aes(x = location, y = count)) +
  geom_col(fill = "steelblue", color = "black") +
  labs(title = "Sightings by Location", x = "Location", y = "Sightings")
print(location_plot)
```

### Question 2: What's the rarest creature type (lowest average rarity_score)?

```R
# Rarest creature by average rarity score
rare_by_type <- creatures_data %>%
  group_by(creature_type) %>%
  summarize(average_rarity = mean(rarity_score), count = n()) %>%
  arrange(average_rarity)
print(rare_by_type)

rare_plot <- ggplot(rare_by_type, aes(x = creature_type, y = average_rarity)) +
  geom_col(fill = "plum", color = "black") +
  labs(title = "Average Rarity by Creature Type", x = "Creature Type", y = "Average Rarity")
print(rare_plot)
```

### Question 3: What time of the day would you most likely to encounter a creature?

```R
# Count by time of day
by_time <- creatures_data %>%
  group_by(time_of_day) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(by_time)

time_plot <- ggplot(by_time, aes(x = time_of_day, y = count)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Creature Sightings by Time of Day", x = "Time of Day", y = "Number of Sightings")
print(time_plot)
```

### Question 4: Is there a relationship between rarity score and photographer level? (scatter plot)

```R
# Create scatter plot
scatter_plot <- ggplot(creatures_data, aes(x = photographer_level, y = rarity_score)) +
  geom_point(size = 3, color = "darkgreen", alpha = 0.7) +
  labs(title = "Rarity Score vs Photographer Level", 
       x = "Photographer Level", 
       y = "Rarity Score") +
  theme_minimal()
print(scatter_plot)
```

---

## Spell 8D: Team Project - Magic School Mystery

This project uses `magic_school_grades.csv` and has 3 questions plus a challenge, with the updated structure including 3x1 grid histograms.

### Setup:

```R
# Load tools and data
library(dplyr)
library(ggplot2)
library(gridExtra)
school_data <- read.csv("datasets/magic_school_grades.csv")
print("🔍 Evidence loaded from magic_school_grades.csv")
head(school_data)
```

### Question 1: What's the distribution of scores for each subject? (3 histograms in 3x1 grid)

```R
# Create 3 histograms stacked on top of each other
# Magic score
magic_hist <- ggplot(school_data, aes(x = magic_score)) +
  geom_histogram(bins = 8, fill = "#d578f2fc", color = "black", alpha = 0.7) +
  labs(title = "Magic Score Distribution", x = "Magic Score", y = "Count")

# Potion score
potion_hist <- ggplot(school_data, aes(x = potion_score)) +
  geom_histogram(bins = 8, fill = "#87d31d", color = "black", alpha = 0.7) +
  labs(title = "Potion Score Distribution", x = "Potion Score", y = "Count")

# Flying score
flying_hist <- ggplot(school_data, aes(x = flying_score)) +
  geom_histogram(bins = 8, fill = "#58c4ef", color = "black", alpha = 0.7) +
  labs(title = "Flying Score Distribution", x = "Flying Score", y = "Count")

# Arrange the three histograms in a 3x1 grid (3 rows, 1 column)
grid_plot <- grid.arrange(magic_hist, potion_hist, flying_hist, nrow = 3, ncol = 1)
print(grid_plot)
```

### Question 2: Do people who have a pet have better magic scores?

```R
# Compare magic scores between pet owners and non-pet owners
pet_comparison <- school_data %>%
  group_by(has_pet) %>%
  summarize(avg_magic = mean(magic_score), count = n())
print(pet_comparison)

# Create a boxplot to visualize the difference
pet_plot <- ggplot(school_data, aes(x = has_pet, y = magic_score, fill = has_pet)) +
  geom_boxplot(color = "black") +
  labs(title = "Magic Scores: Pet Owners vs Non-Pet Owners", 
       x = "Has Pet", y = "Magic Score", fill = "Has Pet")
print(pet_plot)
```

### Question 3: Is there a relationship between potion score and flying score? (scatter plot)

```R
# Create scatter plot to see relationship
pf_scatter <- ggplot(school_data, aes(x = potion_score, y = flying_score, color = house)) +
  geom_point(size = 4, alpha = 0.7) +
  labs(title = "Potion vs Flying Scores",
       x = "Potion Score", y = "Flying Score", color = "House") +
  theme_minimal()
print(pf_scatter)
```

### Challenge: Students from which house has the best score on average?

```R
# Calculate overall average score for each house
house_analysis <- school_data %>%
  mutate(overall_score = (magic_score + potion_score + flying_score) / 3) %>%
  group_by(house) %>%
  summarize(avg_overall = mean(overall_score), count = n()) %>%
  arrange(desc(avg_overall))

print("Average overall scores by house:")
print(house_analysis)

# Visualize the results
house_plot <- ggplot(house_analysis, aes(x = house, y = avg_overall, fill = house)) +
  geom_col(color = "black") +
  labs(title = "Average Overall Score by House",
       x = "House", y = "Average Overall Score", fill = "House")
print(house_plot)
```

---

## 🎉 Congratulations!

You've completed all Day 3 spells! 
Keep practicing these magical data skills! 🔮✨