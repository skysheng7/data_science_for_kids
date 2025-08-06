---
layout: default
title: Day 3 - Data Storytelling Adventures
---

# 🎨 Day 3: Data Storytelling Adventures with Oda the Data Otter

*Today, Oda the magical data otter teaches us how to wrangle messy data and paint beautiful pictures with numbers! We'll become data detectives and storytellers!*

```{image} ../../images/viz.png
:alt: viz
:width: 50%
```
## 🎯 Learning Objectives

By the end of today, you'll be magical data wizards who can:
- 📂 Load real data from CSV files (like opening a treasure chest!)
- 🔧 Use data tools to clean and organize information
- 🌊 Chain commands together with the magical pipe operator
- 📊 Create three types of data stories: histograms, scatter plots, and bar charts
- 👥 Work as a team to solve real data mysteries

## 1. Ice Breaker: Mixed Treasure Bag Sorting Game
*Duration: 10 minutes*

🎈 **Activity: The Great Treasure Sort Competition**

Let's start with a treasure sort! Your team will get a bag of mixed treasures and a mission.

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTB6ZTVqbXdsMW81aG03M2pueTg5Y3EyY3ppdTQ4Z2lzNWJxbjZqOSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/w7GmOB1krzjbl8icfF/giphy.gif" alt="colorful" style="width: 60%; height: auto;">

**What you'll need:** A bag or box of mixed items for each team (e.g., colorful tokens, different types of pens, beads, LEGO bricks).

**Your Mission:**
1. Form teams of 3-4 people. Each team gets one bag.
2. Empty your bag of treasures onto the table.
3. **Your challenge:** Work together to count how many items you have for each category. For example, your result might be "5 red tokens, 3 blue tokens, and 2 green LEGOs."
4. 🏆 The first team to get their counts **wins**!

#### 🤔 Team Reflection
*Once you have your counts, think about this:*
- What steps did your team take to complete the mission?
- Did you sort the items first? Why?

#### 💡 Connecting to Code
Guess what? The steps you took are the *exact* steps data wizards use to wrangle data with code!

- When you sorted items into piles (like all the red things together), you were performing a **`group_by()`** operation.
- When you counted the items in each pile, you were doing a **`summarize()`**.
- If we asked you to find *only the pens*, you would be using **`select()`**.

You just acted out a real data analysis workflow! Today, we'll teach you the spells to do this in R.


## 2. Data Loading Magic
*Duration: 25 minutes*

### 2.1 Spell 1: Reading CSV Files
*Duration: 25 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell01_loading_data.R` in your project files!

#### 🎈 Activity: Opening Data Treasure Chests

**💡 What is a CSV file?**
Think of CSV files like digital treasure chests that hold data! Just like you can open a toy box to see all your toys, we can open CSV files to see all the data inside.

CSV stands for "Comma Separated Values" - it's like writing a shopping list where commas separate each toy you wish to buy.

**🔍 Let's explore our magical datasets:**

```R
# Step 1: Load the treasure chest (read the data)
pets_data <- read.csv("datasets/magical_pets.csv")

# Step 2: Peek inside (look at first few rows)
head(pets_data)

# Step 3: Count our treasures (check size)
nrow(pets_data)  # How many pets?
ncol(pets_data)  # How many details about each pet?
```


## 3. Data Wrangling Adventures
*Duration: 75 minutes*

### 3.1 Spell 2: Select and Filter Magic
*Duration: 25 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell02_data_wrangling.R` in your project files!

#### 🎈 Activity: Choosing What We Want

**💡 What is SELECT?**
SELECT is like choosing which toys you want to play with from your toy box. You don't need ALL your toys, just the ones for today's game!

**💡 What is FILTER?**
FILTER is like finding only the red cars from all your toy cars. You keep only the ones that match what you're looking for!

```R
# Load our data toolbox
library(dplyr)

# SELECT: Pick only the columns we want (like choosing specific toys)
selected_data <- select(pets_data, pet_name, pet_type)

# FILTER: Keep only certain rows (like finding only dragons)
dragons_only <- filter(pets_data, pet_type == "Dragon")
```


### 3.2 Spell 3: Mutate and Group Magic
*Duration: 25 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell03_grouping.R` in your project files!

#### 🎈 Activity: Creating New Information

**💡 What is MUTATE?**
MUTATE is like adding a new sticker to each of your trading cards. You're creating something new based on what's already there!

**💡 What is GROUP BY?**
GROUP BY is like sorting your candy by color - all the red ones together, all the blue ones together!

```R
# MUTATE: Add new information (like calculating age in human years)
pets_with_human_age <- mutate(pets_data, 
                             human_age = age_years / 10)

# GROUP BY and SUMMARIZE: Count how many of each type
pet_summary <- pets_data %>%
  group_by(pet_type) %>%
  summarize(count = n())
```

### 3.3 Spell 4: Pipeline Magic
*Duration: 25 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell04_piping.R` in your project files!

#### 🎈 Activity: Chaining Commands Like Magic

**💡 What is the Pipe %>%?**
The pipe (%>%) is like a magical slide that passes your data from one function to the next! It's like saying "first do this, THEN do that, THEN do this other thing!"


Think of it like cooking a meal:
1. Take vegetables %>%
2. Add water %>%
3. Add spices %>%
4. Cook and serve

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3eXh4enB4emcwMzZtY2xxMWhtNzUxOW14bGlvMTAyNTF0OTJqeXlpciZlcD12MV9naWZzX3NlYXJjaCZjdD1n/Jg8G4ve9HRSpO/giphy.gif" alt="cook" style="width: 100%; height: auto;">


```R
# Instead of many steps:
step1 <- filter(pets_data, age_years > 5)
step2 <- select(step1, pet_name, pet_type)
final <- arrange(step2, pet_name)

# We can chain it all together:
magic_pipeline <- pets_data %>%
  filter(age_years > 5) %>%
  select(pet_name, pet_type) %>%
  arrange(pet_name)
```

**🎮 Human Pipeline Game:**
- Kids line up and pass a ball down the line
- Each person does one "operation" (like adding a sticker, changing color, etc.)
- The ball transforms as it moves through the "pipeline"

## 4. Data Storytelling with Pictures
*Duration: 60 minutes*

### 4.1 Spell 5: Histogram Stories
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell05_histograms.R` in your project files!

#### 🎈 Activity: Shape Detective

**💡 What is a Histogram?**
A histogram is like looking at the shape of your data! Imagine you have a pile of blocks - some stacks are tall, some are short. A histogram shows you the shape of these piles!

```R
library(ggplot2)

# Create a histogram to see the shape of pet ages
ggplot(pets_data, aes(x = age_years)) +
  geom_histogram(bins = 5, fill = "purple", color = "black") +
  labs(title = "How Old Are Our Magical Pets?",
       x = "Age in Years",
       y = "Number of Pets")
```

### 4.2 Spell 6: Scatter Plot Adventures
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell06_scatter_plots.R` in your project files!

#### 🎈 Activity: Relationship Detective

**💡 What is a Scatter Plot?**
A scatter plot is like looking for patterns between two things! Like asking "Do taller kids have bigger feet?" Each dot represents one person showing both their height AND foot size.

```R
# Look for relationship between age and magic level
ggplot(pets_data, aes(x = age_years, y = magic_level)) +
  geom_point(size = 4, color = "blue") +
  labs(title = "Do Older Pets Have More Magic?",
       x = "Age in Years",
       y = "Magic Level")
```

**🎮 Human Scatter Plot:**
- Use tape to make x and y axes on the floor
- Kids position themselves based on two measurements (height vs. shoe size)
- Look for patterns in where people stand!


### 4.3 Spell 7: Bar Chart Champions
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell07_bar_charts.R` in your project files!

#### 🎈 Activity: Category Competition

**💡 What is a Bar Chart?**
A bar chart is like having a competition! Each bar shows how much each team has. Longer bars win! It's perfect for comparing different groups.

```R
# Count each type of pet
pet_counts <- pets_data %>%
  group_by(pet_type) %>%
  summarize(total = n())

# Create a bar chart
ggplot(pet_counts, aes(x = pet_type, y = total)) +
  geom_col(fill = "orange", color = "black") +
  labs(title = "Which Pet Type is Most Popular?",
       x = "Pet Type",
       y = "Number of Pets")
```

**🎮 Human Bar Chart:**
- Teams line up behind their category signs
- The longest line "wins" - you can see the comparison instantly!

## 5. Team Data Detective Project
*Duration: 40 minutes*

### 5.1 Spell 8: Data Mystery Solving
*Duration: 40 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day03_spell08_team_project.R` in your project files!

#### 🎈 Activity: Partner Data Investigation

**🕵️‍♀️ Mission: Solve a Data Mystery!**

Work with a partner to become data detectives! Choose one mystery to solve:

**Mystery Options:**
1. **Magical Pets Mystery:** Which magical pet has the highest magic level? Are older pets more magical?
2. **Creature Sightings Mystery:** Which location has the most creature sightings? What's the rarest creature?
3. **Magic School Mystery:** Which subject do students struggle with most? Who are the top students?

**Your Detective Tools:**
- Use `select()` to pick important clues
- Use `filter()` to focus on specific evidence  
- Use `group_by()` and `summarize()` to count and calculate
- Create at least one visualization to show your findings

**🎯 Investigation Steps:**
1. Load your chosen dataset
2. Explore it with `head()` and `str()`
3. Use data wrangling to find clues
4. Create a visualization to tell your story
5. Present your findings to the class!

✨ **Challenge:** Create the most creative visualization that clearly shows your discovery!

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMG16eWNjNDNwMGsyNjBmeGw1YWM3OWo5eHQ3MG56N3Nlczl0MjhkdyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/1yMNGNC87fkmDKdwQj/giphy.gif" alt="Kids working together on computers like detectives" style="width: 60%; height: auto;">

## 6. 📋 Pro Tips Cheatsheet

### Data Loading Essentials
- `read.csv("filename.csv")` opens data files like treasure chests
- `head(data)` shows first 6 rows (peek inside the chest)
- `nrow(data)` counts how many rows (how many items)
- `ncol(data)` counts how many columns (how many details per item)
- Always check your data after loading it!

### Data Wrangling with dplyr
- `library(dplyr)` loads your data toolbox (don't forget this!)
- `select(data, column1, column2)` picks specific columns
- `filter(data, condition)` keeps only rows that match
- `mutate(data, new_col = calculation)` creates new columns
- `group_by(data, category)` sorts into groups
- `summarize(count = n())` counts items in each group

### Pipeline Magic
- `%>%` means "then do this next"
- `data %>% filter() %>% select()` chains commands together
- Read like instructions: "take data, then filter, then select"
- Much cleaner than creating lots of temporary variables

### Visualization Basics
- `library(ggplot2)` loads the plotting toolbox
- `geom_histogram()` shows data shapes and distributions
- `geom_point()` shows relationships between two things
- `geom_col()` compares categories and groups
- Always add titles with `labs(title = "My Title")`

## 7. 🆘 Troubleshooting Cheatsheet

### Data Loading Problems
🐛 **Error: "cannot open file"**
- **What it means:** R can't find your data file
- **Why it happens:** File name is wrong or file isn't where you think it is
- **The Fix:** Check that file exists in datasets folder, check spelling

🐛 **Error: "object not found"**
- **What it means:** You're trying to use something that doesn't exist
- **Why it happens:** Forgot to run the code that creates the object
- **The Fix:** Run the `read.csv()` line first to load your data

### Function Problems
🐛 **Error: "could not find function"**
- **What it means:** R doesn't know what command you're trying to use
- **Why it happens:** Forgot to load the package
- **The Fix:** Run `library(dplyr)` or `library(ggplot2)` first

🐛 **Error: "object not found" in functions**
- **What it means:** Column name doesn't exist in your data
- **Why it happens:** Typo in column name or wrong dataset
- **The Fix:** Check column names with `names(data)` and fix spelling

### Pipeline Problems
🐛 **Pipeline not working**
- **What it means:** Something wrong in the chain of commands
- **Why it happens:** Forgot to load dplyr, or syntax error
- **The Fix:** Load `library(dplyr)` first, check each step works alone

### Plotting Issues
🐛 **Blank plot or error in ggplot**
- **What it means:** Variable doesn't exist or ggplot2 not loaded
- **Why it happens:** Wrong variable name or forgot `library(ggplot2)`
- **The Fix:** Load ggplot2 first, check variable names match exactly

💡 **Remember:** When you get an error, read it carefully! The error message usually tells you exactly what's wrong and how to fix it.