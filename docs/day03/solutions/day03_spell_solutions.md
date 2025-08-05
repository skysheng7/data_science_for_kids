# 🔮 Day 3 Spell Solutions

This file contains solutions to all Day 3 spells and their practice challenges.

## Spell 1: Loading Data Magic

### Complete Solution Code:
```R
library(readr)
library(dplyr)

# Load the magical pets data
pets_data <- read.csv("datasets/magical_pets.csv")
print("Data loaded successfully!")

# Explore the data
head(pets_data)
nrow(pets_data)
ncol(pets_data)
names(pets_data)

# Load creature sightings data
creatures_data <- read.csv("datasets/creature_sightings.csv")
head(creatures_data)
```

### Expected Output:
```R
# For pets_data head():
  pet_name pet_type age_years magic_level    favorite_treat
1 Sparkles  Unicorn       150          85  Rainbow cookies
2  Thunder   Dragon       300          95       Gold coins
3 Whiskers      Cat         3          20             Fish
4    Flame  Phoenix        75          90     Spicy peppers
5  Bubbles     Fish         1          15       Magic algae
6   Shadow     Wolf         8          60       Moon berries

# For nrow(pets_data):
[1] 6

# For ncol(pets_data):
[1] 5

# For names(pets_data):
[1] "pet_name"       "pet_type"       "age_years"      "magic_level"    "favorite_treat"
```

---

## Spell 2: Select and Filter Magic

### Challenge Solutions:

**Challenge 1: Select only pet_name and age_years**
```R
challenge1 <- select(pets_data, pet_name, age_years)
print(challenge1)
```

Expected Output:
```R
  pet_name age_years
1 Sparkles       150
2  Thunder       300
3 Whiskers         3
4    Flame        75
5  Bubbles         1
6   Shadow         8
```

**Challenge 2: Filter for pets older than 50 years**
```R
challenge2 <- filter(pets_data, age_years > 50)
print(challenge2)
```

Expected Output:
```R
  pet_name pet_type age_years magic_level    favorite_treat
1 Sparkles  Unicorn       150          85  Rainbow cookies
2  Thunder   Dragon       300          95       Gold coins
3    Flame  Phoenix        75          90     Spicy peppers
```

**Challenge 3: Find cats and show only their names**
```R
challenge3 <- pets_data %>%
  filter(pet_type == "Cat") %>%
  select(pet_name)
print(challenge3)
```

Expected Output:
```R
  pet_name
1 Whiskers
```

---

## Spell 3: Grouping and Counting Magic

### Challenge Solutions:

**Challenge 1: Create magic_category column**
```R
pets_with_category <- mutate(pets_data, 
                            magic_category = ifelse(magic_level > 50, "High", "Low"))
print(pets_with_category)
```

Expected Output:
```R
  pet_name pet_type age_years magic_level    favorite_treat magic_category
1 Sparkles  Unicorn       150          85  Rainbow cookies           High
2  Thunder   Dragon       300          95       Gold coins           High
3 Whiskers      Cat         3          20             Fish            Low
4    Flame  Phoenix        75          90     Spicy peppers           High
5  Bubbles     Fish         1          15       Magic algae            Low
6   Shadow     Wolf         8          60       Moon berries           High
```

**Challenge 2: Group by magic_category and count**
```R
magic_counts <- pets_with_category %>%
  group_by(magic_category) %>%
  summarize(count = n())
print(magic_counts)
```

Expected Output:
```R
  magic_category count
1           High     4
2            Low     2
```

---

## Spell 4: Pipeline Magic

### Challenge Solution:
```R
challenge_result <- pets_data %>%
  filter(magic_level > 60) %>%
  select(pet_name, pet_type) %>%
  arrange(pet_name)
print(challenge_result)
```

Expected Output:
```R
  pet_name pet_type
1    Flame  Phoenix
2   Shadow     Wolf
3 Sparkles  Unicorn
4  Thunder   Dragon
```

---

## Spell 5: Histogram Magic

### Challenge Solutions:

**Challenge 1: Create a histogram of ages with different colors**
```R
my_histogram <- ggplot(pets_data, aes(x = age_years)) +
  geom_histogram(bins = 3, fill = "lightblue", color = "darkblue") +
  labs(title = "Distribution of Pet Ages",
       x = "Age in Years",
       y = "Number of Pets")
print(my_histogram)
```

**Challenge 2: Histogram with creature_sightings.csv**
```R
creatures_data <- read.csv("datasets/creature_sightings.csv")
creature_histogram <- ggplot(creatures_data, aes(x = count)) +
  geom_histogram(bins = 4, fill = "green", color = "black") +
  labs(title = "Distribution of Creature Sighting Counts",
       x = "Number of Creatures Seen",
       y = "Frequency")
print(creature_histogram)
```

---

## Spell 6: Scatter Plot Magic

### Challenge Solution:
```R
my_scatter <- ggplot(pets_data, aes(x = magic_level, y = age_years, color = pet_type)) +
  geom_point(size = 5) +
  labs(title = "Magic Level vs Age by Pet Type",
       x = "Magic Level",
       y = "Age in Years",
       color = "Pet Type")
print(my_scatter)
```

### Creature sightings scatter plot:
```R
creatures_data <- read.csv("datasets/creature_sightings.csv")
creature_scatter <- ggplot(creatures_data, aes(x = count, y = row_number())) +
  geom_point(size = 4, color = "red") +
  labs(title = "Creature Sighting Pattern",
       x = "Number Seen",
       y = "Sighting Event")
print(creature_scatter)
```

---

## Spell 7: Bar Chart Magic

### Challenge Solutions:

**Challenge 1: Bar chart showing total age by pet type**
```R
age_totals <- pets_data %>%
  group_by(pet_type) %>%
  summarize(total_age = sum(age_years))

age_bar_chart <- ggplot(age_totals, aes(x = pet_type, y = total_age)) +
  geom_col(fill = "coral", color = "black") +
  labs(title = "Total Age by Pet Type",
       x = "Pet Type",
       y = "Total Age (Years)")
print(age_bar_chart)
```

Expected Output (data values):
```R
  pet_type total_age
1      Cat         3
2   Dragon       300
3     Fish         1
4  Phoenix        75
5  Unicorn       150
6     Wolf         8
```

**Challenge 2: Creature sightings by location**
```R
creatures_data <- read.csv("datasets/creature_sightings.csv")
location_counts <- creatures_data %>%
  group_by(location) %>%
  summarize(total_count = sum(count))

location_bar_chart <- ggplot(location_counts, aes(x = location, y = total_count)) +
  geom_col(fill = "forestgreen", color = "black") +
  labs(title = "Creature Sightings by Location",
       x = "Location",
       y = "Total Creatures Seen")
print(location_bar_chart)
```

---

## Spell 8: Team Project Examples

### Magical Pets Mystery Solutions:

**Which pet has the highest magic level?**
```R
pets_data %>%
  arrange(desc(magic_level)) %>%
  select(pet_name, magic_level) %>%
  head(1)
```

Expected Output:
```R
  pet_name magic_level
1  Thunder          95
```

**Are older pets more magical?**
```R
age_vs_magic_plot <- ggplot(pets_data, aes(x = age_years, y = magic_level)) +
  geom_point(size = 4, color = "purple") +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Do Older Pets Have More Magic?",
       x = "Age in Years", 
       y = "Magic Level")
print(age_vs_magic_plot)
```

**Most common pet type:**
```R
pets_data %>%
  group_by(pet_type) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
```

Expected Output:
```R
  pet_type count
1      Cat     1
2   Dragon     1
3     Fish     1
4  Phoenix     1
5  Unicorn     1
6     Wolf     1
```

### Creature Sightings Mystery Solutions:

**Location with most sightings:**
```R
creatures_data <- read.csv("datasets/creature_sightings.csv")
creatures_data %>%
  group_by(location) %>%
  summarize(total_sightings = sum(count)) %>%
  arrange(desc(total_sightings))
```

**Rarest creature:**
```R
creatures_data %>%
  group_by(creature_type) %>%
  summarize(total_seen = sum(count)) %>%
  arrange(total_seen) %>%
  head(1)
```

### Magic School Mystery Solutions:

**Subject students struggle with most (lowest average grade):**
```R
school_data <- read.csv("datasets/magic_school_grades.csv")
school_data %>%
  group_by(subject) %>%
  summarize(avg_grade = mean(grade)) %>%
  arrange(avg_grade) %>%
  head(1)
```

**Top students:**
```R
school_data %>%
  group_by(student_name) %>%
  summarize(avg_grade = mean(grade)) %>%
  arrange(desc(avg_grade)) %>%
  head(3)
```

**Average grade by subject:**
```R
subject_averages <- school_data %>%
  group_by(subject) %>%
  summarize(average_grade = mean(grade))

ggplot(subject_averages, aes(x = subject, y = average_grade)) +
  geom_col(fill = "lightblue", color = "black") +
  labs(title = "Average Grades by Subject",
       x = "Subject",
       y = "Average Grade")
```