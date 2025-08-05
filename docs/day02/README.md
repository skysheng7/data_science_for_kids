---
layout: default
title: Day 2 - Data Storytelling
---

# 🎨 Day 2: Data Wrangling and Visualization

*Oda the Data Otter discovers how to make data dance with loops and paint beautiful stories with code!*

## 🎯 Learning Objectives
- Master for loops to repeat magical actions
- Discover open-source packages and get help from the R community
- Wrangle messy data into clean, organized datasets
- Create stunning visualizations that tell compelling stories
- Work as a team to solve real data mysteries

## 1. Ice Breaker: Data Detective Mystery Box
*Duration: 10 minutes*

🎈 **Activity:** Grab a mystery box with random objects. Work with a partner to categorize and count items. We'll use this experience to understand how we organize and analyze data!

<img src="PLACEHOLDER_GIF_URL" alt="Detective searching through mystery box" style="width: 100%; height: auto;">

## 2. Magic Loops: Making R Repeat Spells
*Duration: 45 minutes*

### Spell 1: Basic Loop Magic
#### 🎈 Activity: Printing Practice

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell01_basic_loops.R` in your project files!

Let's learn how to make R repeat actions automatically!

### Spell 2: Loop Detective Challenge
#### 🎈 Activity: Fix the Broken Code

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell02_loop_debugging.R` in your project files!

Debug incomplete code and fill in the blanks to make loops work perfectly.

### Spell 3: Story Scrambler Challenge
#### 🎈 Activity: Word Rearrangement Game

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell03_story_scrambler.R` in your project files!

**Step 1:** Use a for loop to scramble this magical sentence: *"In the Magic Forest, a smart rabbit and a tiny dragon became friends, built a flying boat out of leaves, and sailed through the sky to save a sleepy bear cub who was stuck on a candy cloud."*

**Step 2:** Challenge a classmate to write a loop that restores the original story!

✨ **Challenge:** Create mosaic art using loops and programming patterns.

<img src="PLACEHOLDER_GIF_URL" alt="Colorful mosaic art pattern" style="width: 100%; height: auto;">

## 3. Package Power: Unlocking R's Magic Toolbox
*Duration: 30 minutes*

### Spell 4: Open-Source Magic
#### 🎈 Activity: Package Explorer

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell04_packages.R` in your project files!

Discover what open-source means and how to get help from the R community.

### Spell 5: ggplot2 Meets Loops
#### 🎈 Activity: Loop-Powered Visualizations

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell05_loops_and_plots.R` in your project files!

Combine for loops with ggplot2 to create multiple visualizations automatically!

## 4. Data Wrangling: Taming Wild Datasets
*Duration: 50 minutes*

### Spell 6: Loading Data Magic
#### 🎈 Activity: Reading Real Datasets

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell06_loading_data.R` in your project files!

Learn how to bring datasets into R and explore what's inside.

### Spell 7: Data Transformation Spells
#### 🎈 Activity: Clean and Transform

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell07_data_wrangling.R` in your project files!

Master the essential data wrangling functions:
- `select()` - Pick specific columns
- `filter()` - Find specific rows
- `mutate()` - Create new columns
- `group_by()` - Group similar data
- `summarize()` - Calculate summaries

### Spell 8: Pipeline Magic
#### 🎈 Activity: Chain Commands with Pipes

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell08_piping.R` in your project files!

Learn the magical `%>%` operator to chain commands together smoothly.

<img src="PLACEHOLDER_GIF_URL" alt="Data flowing through pipes" style="width: 100%; height: auto;">

## 5. Data Storytelling: Painting with Numbers
*Duration: 35 minutes*

### Spell 9: Histogram Stories
#### 🎈 Activity: Distribution Detective

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell09_histograms.R` in your project files!

Create histograms to reveal hidden patterns in data distributions.

### Spell 10: Scatter Plot Adventures
#### 🎈 Activity: Relationship Explorer

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell10_scatter_plots.R` in your project files!

Discover relationships between variables using scatter plots.

### Spell 11: Bar Chart Champions
#### 🎈 Activity: Category Comparison

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell11_bar_charts.R` in your project files!

Compare categories and groups using powerful bar charts.

## 6. Team Project: Data Mystery Solvers
*Duration: 30 minutes*

### Spell 12: Collaborative Data Investigation
#### 🎈 Activity: Partner Data Storytelling

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell12_team_project.R` in your project files!

Work with a teammate to:
1. Pick a dataset from the datasets folder
2. Use data wrangling and visualization to answer the research question
3. Present your findings to the class

✨ **Challenge:** Create the most creative visualization that tells a compelling story!

<img src="PLACEHOLDER_GIF_URL" alt="Kids collaborating on data project" style="width: 100%; height: auto;">

## 7. 📋 Pro Tips Cheatsheet

### For Loops
- Use `for (i in 1:10)` to repeat actions 10 times
- Always use curly braces `{}` for multiple commands
- `print()` shows results inside loops

### Data Wrangling
- `select()` picks columns: `select(data, column1, column2)`
- `filter()` picks rows: `filter(data, age > 10)`
- `mutate()` creates columns: `mutate(data, new_col = old_col * 2)`
- Pipe `%>%` chains commands: `data %>% filter() %>% select()`

### Visualizations
- `ggplot()` starts every plot
- `aes()` maps data to visual elements
- `geom_histogram()` for distributions
- `geom_point()` for scatter plots
- `geom_bar()` for categories

### Getting Help
- Type `?function_name` in console for help
- Use `library(package_name)` to load packages
- R community is friendly and helpful!

## 8. 🆘 Troubleshooting Cheatsheet

### Common Loop Problems
🐛 **Error: "object not found"**
- **What it means:** R can't find a variable
- **Why it happens:** Variable not created or typo in name
- **The Fix:** Check spelling and make sure variable exists

🐛 **Error: "missing closing brace"**
- **What it means:** Forgot to close `{}`
- **Why it happens:** Every `{` needs a matching `}`
- **The Fix:** Count your braces and add the missing one

### Data Wrangling Issues
🐛 **Error: "could not find function"**
- **What it means:** Package not loaded
- **Why it happens:** Forgot to run `library()`
- **The Fix:** Load the package first: `library(dplyr)`

### Plotting Problems
🐛 **Plot doesn't show**
- **What it means:** Code ran but no plot appeared
- **Why it happens:** Missing `print()` or plot not saved
- **The Fix:** Make sure to run the complete ggplot command

