---
layout: default
title: Day 3 - Data Storytelling
---

# 🎨 Day 3: Data Storytelling

*Oda the Data Otter discovers how to wrangle messy data into clean datasets and paint beautiful stories with advanced visualizations!*

```{image} ../../images/viz.png
:alt: vis
:width: 50%
```

## 🎯 Learning Objectives
- 📊 Load and explore real datasets from CSV files
- 🔧 Master essential data wrangling functions (select, filter, mutate, group_by, summarize)
- 🌊 Learn the magical pipeline operator `%>%` to chain commands
- 📈 Create advanced visualizations: histograms, scatter plots, and bar charts
- 🕵️‍♀️ Work as a team to solve real data mysteries and tell compelling stories

## 1. Ice Breaker: Data Detective Challenge
*Duration: 15 minutes*

🎈 **Activity:** 

## 2. Data Loading: Bringing Real Data to Life
*Duration: 20 minutes*

### 2.1 Spell 1: Reading CSV Files
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell01_loading_data.R` in your project files!

#### 🎈 Activity: Reading Real Datasets

📊 **Data is everywhere!** From sports scores to weather patterns, we'll learn how to bring real datasets into R and explore what secrets they hold.

🔮 **What is a CSV file?** Think of it like a digital spreadsheet that any program can read - it's like the universal language for data!

```R
# The magic command to read data
creature_data <- read.csv("datasets/creature_sightings.csv")

# Look at the first few rows
head(creature_data)

# See the structure of our data
str(creature_data)
```

💡 **Pro Tips from this spell:**
- `read.csv()` reads data from CSV files
- `head()` shows the first 6 rows
- `str()` shows the structure (columns and data types)

## 3. Data Wrangling: Taming Wild Datasets
*Duration: 60 minutes*

### 3.1 Spell 2: Data Transformation Magic
*Duration: 25 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell02_data_wrangling.R` in your project files!

#### 🎈 Activity: Clean and Transform

🔧 **The Data Toolkit:** Master the essential data wrangling functions:
- `select()` - Pick specific columns (like choosing ingredients)
- `filter()` - Find specific rows (like finding red candies in a jar)
- `mutate()` - Create new columns (like calculating totals)
- `group_by()` - Group similar data (like sorting by color)
- `summarize()` - Calculate summaries (like counting each group)

```R
library(dplyr)  # Load our data wrangling toolkit

# Select only the columns we want
selected_data <- select(creature_data, creature_type, location, count)

# Filter for only forest creatures
forest_creatures <- filter(creature_data, location == "forest")

# Create a new column for rarity
with_rarity <- mutate(creature_data, 
                      rarity = ifelse(count <= 2, "rare", "common"))
```

💡 **Pro Tips from this spell:**
- Always load `dplyr` with `library(dplyr)` first
- Use `==` for equals (not `=`)
- `ifelse()` creates conditional columns

### 3.2 Spell 3: Grouping and Summarizing
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell03_grouping.R` in your project files!

#### 🎈 Activity: Finding Patterns in Groups

🔍 **Group Detective Work:** Learn to group data and calculate summaries for each group!

```R
# Group by creature type and calculate totals
creature_summary <- creature_data %>%
  group_by(creature_type) %>%
  summarize(
    total_sightings = sum(count),
    average_per_sighting = mean(count),
    number_of_locations = n()
  )
```

### 3.3 Spell 4: Pipeline Magic
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell04_piping.R` in your project files!

#### 🎈 Activity: Chain Commands with Pipes

🌊 **The Magic Pipeline:** Learn the magical `%>%` operator to chain commands together smoothly - like water flowing through pipes!

```R
# Instead of this messy code:
step1 <- filter(creature_data, count >= 2)
step2 <- select(step1, creature_type, location, count)
step3 <- arrange(step2, desc(count))

# We can write this beautiful pipeline:
clean_data <- creature_data %>%
  filter(count >= 2) %>%
  select(creature_type, location, count) %>%
  arrange(desc(count))
```

💡 **Pro Tips from this spell:**
- `%>%` means "then do this"
- Read pipelines like recipes: first this, then this, then this
- Much cleaner than creating many temporary variables

## 4. Advanced Data Storytelling: Painting with Numbers
*Duration: 45 minutes*

### 4.1 Spell 5: Histogram Stories
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell05_histograms.R` in your project files!

#### 🎈 Activity: Distribution Detective

📊 **Shape Detective:** Create histograms to reveal hidden patterns in data distributions. Is the data shaped like a mountain, a valley, or something else?

```R
library(ggplot2)

ggplot(creature_data, aes(x = count)) +
  geom_histogram(bins = 10, fill = "purple", alpha = 0.7) +
  labs(title = "Distribution of Creature Counts",
       x = "Number of Creatures Spotted",
       y = "Frequency")
```

### 4.2 Spell 6: Scatter Plot Adventures
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell06_scatter_plots.R` in your project files!

#### 🎈 Activity: Relationship Explorer

🔍 **Relationship Hunter:** Discover relationships between variables using scatter plots. Do taller creatures have more magic power? Let's find out!

```R
ggplot(magical_creatures, aes(x = height, y = magic_power)) +
  geom_point(size = 3, color = "blue") +
  labs(title = "Height vs Magic Power",
       x = "Height (cm)",
       y = "Magic Power Level")
```

### 4.3 Spell 7: Bar Chart Champions
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell07_bar_charts.R` in your project files!

#### 🎈 Activity: Category Comparison

🏆 **Category Champions:** Compare categories and groups using powerful bar charts. Which creature type wins the sighting competition?

```R
creature_totals <- creature_data %>%
  group_by(creature_type) %>%
  summarise(total_count = sum(count))

ggplot(creature_totals, aes(x = creature_type, y = total_count)) +
  geom_col(fill = "orange") +
  labs(title = "Total Sightings by Creature Type",
       x = "Creature Type",
       y = "Total Sightings") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```

## 5. Team Project: Data Mystery Solvers
*Duration: 40 minutes*

### 5.1 Spell 8: Collaborative Data Investigation
*Duration: 40 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell08_team_project.R` in your project files!

#### 🎈 Activity: Partner Data Storytelling

🕵️‍♀️ **Data Detectives Unite!** Work with a teammate to:
1. Pick a dataset from the datasets folder
2. Use data wrangling and visualization to answer a research question
3. Present your findings to the class

✨ **Challenge:** Create the most creative visualization that tells a compelling story!

**Sample Research Questions:**
- Which magical pet is most popular in different age groups?
- What subjects do students struggle with most at Magic School?
- Which creatures are found in which locations?

## 6. 📋 Pro Tips Cheatsheet

### Data Loading
- `read.csv("filename.csv")` loads data from CSV files
- `head()` shows first few rows
- `str()` shows data structure
- Always check your data after loading!

### Data Wrangling with dplyr
- `select()` picks columns: `select(data, column1, column2)`
- `filter()` picks rows: `filter(data, age > 10)`
- `mutate()` creates columns: `mutate(data, new_col = old_col * 2)`
- `group_by()` groups data: `group_by(data, category)`
- `summarize()` calculates summaries: `summarize(count = n())`

### Pipeline Magic
- `%>%` chains commands: `data %>% filter() %>% select()`
- Read like a recipe: "take data, then filter, then select"
- Much cleaner than many temporary variables

### Advanced Visualizations
- `geom_histogram()` for distributions
- `geom_point()` for scatter plots  
- `geom_col()` for bar charts
- Always add clear titles with `labs()`

## 7. 🆘 Troubleshooting Cheatsheet

### Data Loading Issues
🐛 **Error: "cannot open file"**
- **What it means:** R can't find your file
- **Why it happens:** Wrong file path or filename
- **The Fix:** Check file exists in datasets folder

### Data Wrangling Problems
🐛 **Error: "could not find function"**
- **What it means:** Package not loaded
- **Why it happens:** Forgot to run `library(dplyr)`
- **The Fix:** Load the package first: `library(dplyr)`

🐛 **Error: "object not found"**
- **What it means:** Column name doesn't exist
- **Why it happens:** Typo in column name
- **The Fix:** Check exact column names with `names(data)`

### Pipeline Problems
🐛 **Error with `%>%`**
- **What it means:** Pipeline broken
- **Why it happens:** Missing package or syntax error
- **The Fix:** Make sure `dplyr` is loaded, check each step

### Plotting Issues
🐛 **Error: "object not found" in ggplot**
- **What it means:** Variable doesn't exist in data
- **Why it happens:** Wrong variable name or data not loaded
- **The Fix:** Check variable names with `names(data)`
