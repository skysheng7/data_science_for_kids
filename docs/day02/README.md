---
layout: default
title: Day 2 - Data Storytelling
---

# 🎨 Day 2: Data Wrangling and Visualization

*Oda the Data Otter discovers how to make data dance with loops and paint beautiful stories with code!*

```{image} ../../images/viz.png
:alt: vis
:width: 50%
```

## 🎯 Learning Objectives
- Master for loops to repeat magical actions
- Discover open-source packages and get help from the R community
- Wrangle messy data into clean, organized datasets
- Create stunning visualizations that tell compelling stories
- Work as a team to solve real data mysteries

## 1. Ice Breaker: Human Decision Tree Builder
*Duration: 15 minutes*

🎈 **Activity:** Work in groups of 3-4 to interview each other, draw a decision tree, and write if-else code that sorts each group member into a unique category! This refreshes Day 1's if-else magic while preparing us for data exploration.

**How to Play:**
1. Discovery Questions *(4 min)*: Share with your group:
   - What do you have in common with some (but not all) group members?
   - What makes you different from everyone else in your group?
   
   Example discoveries:
   - "Sarah loves math, but Sky and Jamie prefer art"
   - "Only Sky has a pet, the rest of us don't have any"
   - "Sky and Sarah are 12+, but Jamie is 11"

2. Find Your Split Points *(5 min)*:
   - What question divides your group into 2 roughly equal parts?
   - Within each part, what question separates people further?
   - Can you create a path where everyone ends up alone?

3. Draw & Code *(5 min)*:
   
**Simple Example Decision Tree:**
```
                    Age >= 12?
                   /          \
                YES            NO
               /                \
        Love math?           Jamie (11)
       /        \            "Young Explorer"
     YES        NO
    /            \
Sarah (12)    Sky (28)
"Math Wizard"  "Pet Lover"
```

**Corresponding R Code:**
```R
# Test with each person's info!
name <- "Sarah"     # Try "Sarah", "Sky", "Jamie"
age <- 12           # Sarah: 12, Sky: 13, Jamie: 11  
loves_math <- TRUE  # Sarah: TRUE, Sky: FALSE, Jamie: FALSE
has_pet <- FALSE    # Sarah: FALSE, Sky: TRUE, Jamie: FALSE

if (age >= 12) {
  if (loves_math == TRUE) {
    print("Sarah: 🧮 Math Wizard!")      # Sarah lands here
  } else {
    print("Sky: 🐈 Pet Lover!")        # Sky lands here  
  }
} else {
  print("Jamie: 🌟 Young Explorer!")     # Jamie lands here
}
```

4. **Reflect (1 min):** 
   - Does everyone get their own category? 
   - What surprised you about your group's similarities and differences?

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZmFvOTFlYW5zemsza3Rjd2N2ZTN6enp5eHBvYzB4d24xMTcydmwybiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/Ta2eHM043vhVS/giphy.gif" alt="hello2" style="width: 100%; height: auto;">

## 2. Magic Loops: Making R Repeat Spells
*Duration: 75 minutes*

🎭 **Imagine you're a chef baking 10 cookies.** Instead of repeat the actions, "mix flour, add sugar, bake", 10 separate times, you create a robot and repeat this procedure for you 10 times! That's exactly what for loops do - they let us repeat code without typing it over and over.

🔮 **The Magic Formula:** `for (number in 1:10) { # do something }`
- `number` is like a counter that changes each time (number = 1, then 2, then 3...)
- `1:10` means "count from 1 to 10"
- Everything inside `{}` get executed 10 times!

```R
for (number in 1:10){
    print(paste("🍪 Making Cookie #", number))
    print("🥛 Mix flour")
    print("🍯 Add sugar")
    print("🔥 Bake")
    print("") # add an empty line before we start making the next cookie!
}
```

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3djRrMWlzbnBzZGkzY3d2N3Rld2RpeTF6aGdkdWp0Z29pbGhueDV2eiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/VbIAPdxKhv9jG/giphy.gif" alt="ginger" style="width: 100%; height: auto;">

### 2.1 Spell 1: Basic Loop Magic
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell01_basic_loops.R` in your project files!

Let's learn how to make R repeat actions automatically! We'll start by printing messages and watching our counter change.

#### 🎈 Activity: Printing Practice

💡 **Pro Tips from this spell:**
- Think of `i` as a magical counter that changes each time!
- The loop runs once for each number in the range you give it
- Use `c()` to create collections of items like animals or names
- `paste()` is great for gluing strings and numbers together

### 2.2 🏃‍♀️ Physical Activity: Human For Loop Theater
*Duration: 30 minutes*

🎭 **Now that you understand loops, let's BE the loops!** Time to get creative and invent your own human loop performance!

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3aW1xaHl5aDFkb2hmd3pqNnQxYTFic2lub3pvMWpsdGl4ZXZ6cGdzbyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0MYK98ppyEHuvl0A/giphy.gif" alt="sing" style="width: 100%; height: auto;">


#### 🎈 Activity: Design Your Own Loop Performance

**🌟 Your Mission:** Work in groups of 5-6 to create and perform an original human for loop! You can use the examples below for inspiration, but we want to see YOUR creative ideas!

**🎪 Example Inspiration (but make it your own!):**

**🍪 Example #1: Cookie Factory Assembly Line**
- Setup: 3 people are stations, 2 person is the "cookie dough," 1 person is the loop counter
- Loop Counter says: "Starting iteration 1!"
- Station 1: "Mixing flour!" (stirring motion)
- Station 2: "Adding sugar!" (sprinkling motion)  
- Station 3: "Baking cookie!" (oven motion)
- Cookie dough 1 walks through all 4 stations, then goes to back of line --> cookie 1 ready!
- Loop Counter says: "Starting iteration 2!" and repeat --> Cookie dough 2 ready!
- After 2 cookies: Everyone shouts "Cookie factory loop complete!"

**🐰 Example #2: Human Computer Instructions**
- Setup: 1 person is the "code," 4-5 people are individual "computer action actors"
- Code calls out: "For i in 1 to 3, execute these actions in sequence:"
- Code calls out: "Iteration 1! Sarah - jump like a rabbit! Tom - spin around! Lisa - clap 2 times! Mike - roar like a lion!"
- Each actor performs their specific action when called: Sarah hops, Tom spins, Lisa claps, Mike roars
- Code calls out: "Iteration 2! Sarah - jump like a rabbit! Tom - spin around! Lisa - clap 2 times! Mike - roar like a lion!"
- Same actors repeat their same actions in the same order
- Code calls out: "Iteration 3! Sarah - jump like a rabbit! Tom - spin around! Lisa - clap 2 times! Mike - roar like a lion!"
- After iteration 3: Code says "Loop complete!" and all actors freeze

**🎨 Creative Ideas to Spark Your Imagination:**
- Sports training routines (jumping jacks, running laps, passing balls)
- Morning routines (brush teeth, eat breakfast, get dressed)
- Art creation (draw, color, cut, paste)
- Music performances (clap, stomp, sing, repeat)

**⏰ Timeline:**
- **Planning & Practice (20 minutes):** Brainstorm your loop idea, assign roles, and rehearse
- **Performances (10 minutes):** Each group performs for 1-2 minutes

**🎉 Performance Guidelines:**
- Start by announcing: "Our loop is in iteration X!"
- End with: "Loop complete!" or something creative

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2d4eXNtc2kxYjIweTM4NDJwODJ5aHM4OWpsOXYyMmUxcGkwb3BwYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l3fQueO8cHyZl2Pvi/giphy.gif" alt="performance" style="width: 100%; height: auto;">


### 2.3 Spell 2: Loop Detective Challenge
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell02_loop_debugging.R` in your project files!

#### 🎈 Activity: Fix the Broken Code

🕵️ **Detective Mission:** Someone cast incomplete loop spells! Your job is to debug the broken code and fill in the blanks to make loops work perfectly. Follow the clues and fix the missing pieces!

### 2.4 Spell 3: Art with Loops
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell03_art_with_loops.R` in your project files!

#### 🎈 Activity: Creative Programming Patterns

✨ **Challenge:** Create beautiful art using loops and programming patterns - from simple stars to colorful grids and even Christmas trees!

### 2.5 🤯 Challenging Magic -- Spell 4: Story Scrambler Challenge
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell04_story_scrambler.R` in your project files!

📚 **The Magic Story:** *"In the Magic Forest, a smart rabbit and a tiny dragon became friends, built a flying boat out of leaves, and sailed through the sky to save a sleepy bear cub who was stuck on a candy cloud."*

```{image} ../../images/forest.png
:alt: forest
:width: 60%
```

#### 🎈 Activity: Secret Message Encoder & Decoder

🕵️ **Turn yourself into a data spy!** Learn two secret encoding methods:
- **Method 1:** Reverse word order (like reading backwards to confuse enemies!)
- **Method 2:** Every-other-word scramble (mix odd and even positioned words!)

Create secret codes to share with friends using mini messages like "Meet me at the playground after school" or "The password is rainbow unicorn."

💡 **Pro Tips from this spell:**
- `length()` tells you how many items are in a list
- `%%` finds remainders (great for finding odd/even numbers!)
- `paste(words, collapse = " ")` joins words back into sentences
- Use `i:1` for backwards loops, `1:i` for forward loops
- `c()` creates or adds to lists: `new_list <- c(old_list, new_item)`

## 3. Package Power: Unlocking R's Magic Toolbox
*Duration: 30 minutes*

### 3.1 Spell 5: Open-Source Magic
*Duration: 15 minutes*

#### 🎈 Activity: Package Explorer

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell05_packages.R` in your project files!

🌟 **What is Open-Source?** It's like a giant library where thousands of friendly wizards share their best spells for free! Anyone can use them, improve them, and share them back.

Discover what open-source means and how to get help from the R community.

### 3.2 Spell 6: ggplot2 Meets Loops
*Duration: 15 minutes*

#### 🎈 Activity: Loop-Powered Visualizations

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell06_loops_and_plots.R` in your project files!

🎨 **Magic Combo:** Combine for loops with ggplot2 to create multiple beautiful visualizations automatically! It's like having a robot artist that paints dozens of pictures for you!

## 4. Data Wrangling: Taming Wild Datasets
*Duration: 50 minutes*

### 4.1 Spell 7: Loading Data Magic
*Duration: 15 minutes*

#### 🎈 Activity: Reading Real Datasets

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell07_loading_data.R` in your project files!

📊 **Data is everywhere!** From sports scores to weather patterns, we'll learn how to bring real datasets into R and explore what secrets they hold.

### 4.2 Spell 8: Data Transformation Spells
*Duration: 20 minutes*

#### 🎈 Activity: Clean and Transform

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell08_data_wrangling.R` in your project files!

🔧 **The Data Toolkit:** Master the essential data wrangling functions:
- `select()` - Pick specific columns (like choosing ingredients)
- `filter()` - Find specific rows (like finding red candies in a jar)
- `mutate()` - Create new columns (like calculating totals)
- `group_by()` - Group similar data (like sorting by color)
- `summarize()` - Calculate summaries (like counting each group)

### 4.3 Spell 9: Pipeline Magic
*Duration: 15 minutes*

#### 🎈 Activity: Chain Commands with Pipes

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell09_piping.R` in your project files!

🌊 **The Magic Pipeline:** Learn the magical `%>%` operator to chain commands together smoothly - like water flowing through pipes!

<img src="PLACEHOLDER_GIF_URL" alt="Data flowing through pipes" style="width: 100%; height: auto;">

## 5. Data Storytelling: Painting with Numbers
*Duration: 35 minutes*

### 5.1 Spell 10: Histogram Stories
*Duration: 12 minutes*

#### 🎈 Activity: Distribution Detective

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell10_histograms.R` in your project files!

📊 **Shape Detective:** Create histograms to reveal hidden patterns in data distributions. Is the data shaped like a mountain, a valley, or something else?

### 5.2 Spell 11: Scatter Plot Adventures
*Duration: 12 minutes*

#### 🎈 Activity: Relationship Explorer

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell11_scatter_plots.R` in your project files!

🔍 **Relationship Hunter:** Discover relationships between variables using scatter plots. Do tall people have bigger feet? Let's find out!

### 5.3 Spell 12: Bar Chart Champions
*Duration: 11 minutes*

#### 🎈 Activity: Category Comparison

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell12_bar_charts.R` in your project files!

🏆 **Category Champions:** Compare categories and groups using powerful bar charts. Which group wins the data competition?

## 6. Team Project: Data Mystery Solvers
*Duration: 30 minutes*

### 6.1 Spell 13: Collaborative Data Investigation
*Duration: 30 minutes*

#### 🎈 Activity: Partner Data Storytelling

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell13_team_project.R` in your project files!

🕵️‍♀️ **Data Detectives Unite!** Work with a teammate to:
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

