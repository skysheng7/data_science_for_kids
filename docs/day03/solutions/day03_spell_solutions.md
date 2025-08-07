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

**Challenge 1: Select only creature name and type**
```R
# creature_data <- read.csv("datasets/creature_of_sky.csv")  # Practice data
creature_data <- read.csv("datasets/creatures.csv")  # Your real creature data

creature_basics <- select(creature_data, creature_name, creature_type)
print(creature_basics)
```

**Challenge 2: Filter for creatures with high magic power (8+)**
```R
powerful_creatures <- filter(creature_data, magic_power >= 8)
print(powerful_creatures)
```

**Challenge 3: Find dragons and show only their names**
```R
dragon_names <- creature_data %>%
  filter(creature_type == "Dragon") %>%
  select(creature_name)
print(dragon_names)
```

---

## Spell 3: Slice and Arrange Magic

### Challenge Solutions:

**Challenge 1: Get the first 3 creatures**
```R
first_three <- slice(creature_data, 1:3)
print(first_three)
```

**Challenge 2: Sort creatures by age (youngest first)**
```R
creatures_by_age <- arrange(creature_data, creature_age)
print(creatures_by_age)
```

**Challenge 3: Find the top 5 most powerful creatures**
```R
top_powerful <- creature_data %>%
  arrange(desc(magic_power)) %>%
  slice(1:5)
print(top_powerful)
```

**Challenge 4: Sort by creature type, then by magic power (highest first)**
```R
creatures_organized <- arrange(creature_data, creature_type, desc(magic_power))
print(creatures_organized)
```

---

## Spell 4: Mutate and Group Magic

### Challenge Solutions:

**Challenge 1: Create power_category column**
```R
creatures_enhanced <- mutate(creature_data, 
                           power_category = ifelse(magic_power >= 8, "Super Strong", 
                                                 ifelse(magic_power >= 5, "Medium", "Growing")))
print(creatures_enhanced)
```

**Challenge 2: Group by creature_type and count**
```R
creature_summary <- creature_data %>%
  group_by(creature_type) %>%
  summarize(count = n(),
           avg_power = mean(magic_power))
print(creature_summary)
```

**Challenge 3: Create human_years column (creature age * 0.8)**
```R
creatures_with_human_age <- mutate(creature_data, 
                                  human_years = creature_age * 0.8)
print(creatures_with_human_age)
```

---

## Spell 5: Pipeline Magic

### Challenge Solutions:

**Challenge 1: Find winged creatures with high power**
```R
powerful_winged <- creature_data %>%
  filter(has_wings == "Yes") %>%
  filter(magic_power >= 7) %>%
  select(creature_name, creature_type, magic_power) %>%
  arrange(desc(magic_power))
print(powerful_winged)
```

**Challenge 2: Top 3 oldest creatures of each type**
```R
oldest_by_type <- creature_data %>%
  group_by(creature_type) %>%
  arrange(desc(creature_age)) %>%
  slice(1:3) %>%
  select(creature_name, creature_type, creature_age)
print(oldest_by_type)
```

**Challenge 3: Complex pipeline - fire element creatures analysis**
```R
fire_analysis <- creature_data %>%
  filter(magical_element == "fire") %>%
  mutate(power_level = ifelse(magic_power >= 8, "High", "Medium")) %>%
  group_by(power_level) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
print(fire_analysis)
```

---

## Spell 6: Histogram Magic

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

## Spell 7: Scatter Plot Magic

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

## Spell 8: Bar Chart Magic

### Challenge Solutions:

**Challenge 1: Count creatures by type**
```R
creature_counts <- creature_data %>%
  group_by(creature_type) %>%
  summarize(total = n())

type_bar_chart <- ggplot(creature_counts, aes(x = creature_type, y = total)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Which Creature Type is Most Popular?",
       x = "Creature Type",
       y = "Number of Creatures")
print(type_bar_chart)
```

**Challenge 2: Average magic power by magical element**
```R
element_power <- creature_data %>%
  group_by(magical_element) %>%
  summarize(avg_power = mean(magic_power))

element_bar_chart <- ggplot(element_power, aes(x = magical_element, y = avg_power, fill = magical_element)) +
  geom_col(color = "black") +
  labs(title = "Average Magic Power by Element",
       x = "Magical Element",
       y = "Average Magic Power") +
  theme(legend.position = "none")
print(element_bar_chart)
```

**Challenge 3: Total age by creature type (only winged creatures)**
```R
winged_age_totals <- creature_data %>%
  filter(has_wings == "Yes") %>%
  group_by(creature_type) %>%
  summarize(total_age = sum(creature_age))

winged_bar_chart <- ggplot(winged_age_totals, aes(x = creature_type, y = total_age)) +
  geom_col(fill = "skyblue", color = "navy") +
  labs(title = "Total Age of Winged Creatures by Type",
       x = "Creature Type",
       y = "Total Age (Years)")
print(winged_bar_chart)
```

---

## Spell 9: Team Project Example Solutions

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

### Elemental Balance Mystery Solutions:

**Which magical element is most common?**
```R
creature_data %>%
  group_by(magical_element) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
```

**Do certain creature types prefer certain elements?**
```R
element_type_analysis <- creature_data %>%
  group_by(creature_type, magical_element) %>%
  summarize(count = n()) %>%
  arrange(creature_type, desc(count))

# Visualization
ggplot(creature_data, aes(x = creature_type, fill = magical_element)) +
  geom_bar(position = "fill") +
  labs(title = "Element Distribution by Creature Type",
       x = "Creature Type",
       y = "Proportion",
       fill = "Magical Element") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

### Additional Dataset Solutions:

**Creature Sightings Analysis:**
```R
creatures_sightings <- read.csv("datasets/creature_sightings.csv")

# Location with most sightings
creatures_sightings %>%
  group_by(location) %>%
  summarize(total_sightings = sum(count)) %>%
  arrange(desc(total_sightings))

# Rarest creature
creatures_sightings %>%
  group_by(creature_type) %>%
  summarize(total_seen = sum(count)) %>%
  arrange(total_seen) %>%
  head(1)
```

**Magic School Analysis:**
```R
school_data <- read.csv("datasets/magic_school_grades.csv")

# Subject students struggle with most
school_data %>%
  group_by(subject) %>%
  summarize(avg_grade = mean(grade)) %>%
  arrange(avg_grade) %>%
  head(1)

# Top students
school_data %>%
  group_by(student_name) %>%
  summarize(avg_grade = mean(grade)) %>%
  arrange(desc(avg_grade)) %>%
  head(3)
```