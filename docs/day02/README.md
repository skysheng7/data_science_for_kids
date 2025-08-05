---
layout: default
title: Day 2 - Loops and Magic Libraries
---

# 🪄 Day 2: Loops and Magic Libraries

*Oda the Data Otter learns to repeat magic spells and discovers R's treasure box of helpful tools!*

```{image} ../../images/loop.png
:alt: loop
:width: 50%
```

## 🎯 Learning Objectives
- 🔄 Master for loops to repeat magical actions automatically
- 📚 Discover what open-source means and how packages work
- 🆘 Learn how to get help using the `?` function
- 🎨 Create your first simple visualizations with ggplot2
- 🗂️ Understand what dataframes are with simple examples

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
*Duration: 85 minutes*

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

### 2.5 🤯 Challenging Magic -- Spell 4: Story Scrambler Challenge (Optional)
*Duration: 20 minutes (excluded from time in chapter 2)*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell04_story_scrambler.R` in your project files!

📚 **The Magic Story:** *"In the Magic Forest, a smart rabbit and a tiny dragon became friends, built a flying boat out of leaves, and sailed through the sky to save a sleepy bear cub who was stuck on a candy cloud."*

```{image} ../../images/forest.png
:alt: forest
:width: 100%
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

## 3. Magic Libraries: R's Treasure Chest of Tools
*Duration: 45 minutes*

### 3.1 Spell 5: What is Open-Source Magic?
*Duration: 10 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell05_packages.R` in your project files!

#### 🎈 Activity: Understanding Open-Source

🌟 **What is Open-Source?** Imagine if all the world's best chefs shared their secret recipes for free, and anyone could use them, improve them, and share them back! That's exactly what open-source means in the coding world.

🎪 **Think of it like this:**
- 📚 **Giant Free Library:** Thousands of friendly programmers create useful tools and share them for free
- 🤝 **Community Help:** When you have problems, people help each other solve them
- 🎁 **Always Free:** You never have to pay to use these amazing tools!

### 3.2 Spell 6: Getting Help with the Magic `?`
*Duration: 10 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell06_getting_help.R` in your project files!

#### 🎈 Activity: The Help Detective

🆘 **The Magic Question Mark:** In R, when you don't know how something works, just type `?` before the function name!

```R
# Want to know how print() works?
?print

# Curious about the mean() function?
?mean
```

💡 **What you'll see:**
- **Description:** What the function does
- **Usage:** How to use it
- **Examples:** Real examples you can try!

### 3.3 Spell 7: Your First Package - ggplot2
*Duration: 10 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell07_first_package.R` in your project files!

#### 🎈 Activity: Installing Your First Magic Tool

📦 **What is a Package?** Think of packages like apps on your phone - each one adds new powers to R!

```R
# Step 1: Install the package (like downloading an app)
install.packages("ggplot2")

# Step 2: Load the package (like opening the app)
library(ggplot2)
```

🎨 **Meet ggplot2:** This package is like a magical paintbrush that helps us create beautiful pictures with data!

### 3.4 Spell 8: Your First Plot (No Data Yet!)
*Duration: 15 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell08_first_plot.R` in your project files!

#### 🎈 Activity: Drawing Without Data

🎭 **Let's start simple:** We can make plots even without complicated data! We'll use simple lists of information.

```R
# Simple lists (these are called vectors)
animals <- c("cat", "dog", "rabbit", "hamster", "fish")
counts <- c(3, 5, 2, 1, 4)

# Your first ggplot2 magic spell!
ggplot() + 
  geom_col(aes(x = animals, y = counts))
```

🔮 **What does this code do?**
- `c()` creates a simple list
- `ggplot()` starts the magic
- `geom_col()` creates bars
- `aes()` tells R what goes where (x and y axes)

✨ **Challenge:** Try changing the animals or numbers and see what happens!

## 4. Introducing Dataframes: R's Magic Tables
*Duration: 20 minutes*

### 4.1 Spell 9: What is a Dataframe?
*Duration: 20 minutes*

📁 **Find this spell in Posit Cloud:** Look for the file `day02_spell09_dataframes.R` in your project files!

#### 🎈 Activity: Building Your First Data Table

🗂️ **What is a Dataframe?** Think of it like a super simple spreadsheet - it has rows and columns, just like a table you might make for organizing your Pokemon cards or book collection!

```R
# Let's create a simple dataframe about pets
pets <- data.frame(
  name = c("Fluffy", "Buddy", "Whiskers"),
  type = c("cat", "dog", "cat"),
  age = c(3, 5, 2)
)

# Look at our dataframe
print(pets)
```

🔮 **What you'll see:**
```
     name type age
1  Fluffy  cat   3
2   Buddy  dog   5
3 Whiskers  cat   2
```

💡 **Understanding the parts:**
- **Columns:** `name`, `type`, `age` (like categories)
- **Rows:** Each pet gets one row (like one card in your collection)
- **data.frame():** The magic function that creates tables

✨ **Challenge:** Create your own dataframe about your favorite foods, movies, or friends!

## 5. 📋 Pro Tips Cheatsheet

### For Loops
- Use `for (i in 1:10)` to repeat actions 10 times
- Always use curly braces `{}` for multiple commands
- `print()` shows results inside loops
- Think of `i` as a magical counter that changes each time

### Packages & Getting Help
- `install.packages("package_name")` downloads new tools
- `library(package_name)` loads tools for use
- Type `?function_name` to get help on any function
- Open-source means free tools shared by friendly programmers

### Simple Plotting with ggplot2
- `ggplot()` starts every plot
- `geom_col()` creates bar charts
- `aes(x = , y = )` tells R what goes on each axis
- `c()` creates simple lists of data

### Dataframes
- `data.frame()` creates tables with rows and columns
- Think of dataframes like spreadsheets or card collections
- Each column is a category (like name, age, type)
- Each row is one item (like one person or one pet)

## 6. 🆘 Troubleshooting Cheatsheet

### Common Loop Problems
🐛 **Error: "object not found"**
- **What it means:** R can't find a variable
- **Why it happens:** Variable not created or typo in name
- **The Fix:** Check spelling and make sure variable exists

🐛 **Error: "missing closing brace"**
- **What it means:** Forgot to close `{}`
- **Why it happens:** Every `{` needs a matching `}`
- **The Fix:** Count your braces and add the missing one

### Package Problems
🐛 **Error: "could not find function"**
- **What it means:** Package not loaded
- **Why it happens:** Forgot to run `library()`
- **The Fix:** Load the package first: `library(ggplot2)`

🐛 **Error: "there is no package called..."**
- **What it means:** Package not installed
- **Why it happens:** Need to download the package first
- **The Fix:** Run `install.packages("package_name")` first

### Simple Plotting Problems
🐛 **Plot doesn't show**
- **What it means:** Code ran but no plot appeared
- **Why it happens:** Missing parts of the ggplot command
- **The Fix:** Make sure you have `ggplot() + geom_something()`

🐛 **Error in ggplot: "object not found"**
- **What it means:** R can't find your data
- **Why it happens:** Variable name is wrong or not created
- **The Fix:** Check if you created your data with `c()` or `data.frame()`

