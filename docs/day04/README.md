---
layout: default
title: Day 4 - Statistics Ocean
---

# 🌊 Day 4: Statistics Ocean

*Join Oda the Data Otter as she dives deep into the magical Statistics Ocean, where colorful data reveals the secrets of mean, median, and sampling!*

```{image} ../../images/stat.png
:alt: stat
:width: 50%
```

## 🔮 Learning Journey Overview

Today we'll explore the fascinating world of statistics using hands-on activities with toy cows, colorful candies, and magical data tokens. You'll learn how to measure central tendencies, understand sampling, and discover the magic of confidence intervals through fun physical experiments!

### 🎯 Learning Objectives
- 📏 Understand mean, median, and mode through measuring toy cows
- 🍬 Learn about sampling by counting candy flavors
- 🔄 Explore bootstrapping with hands-on candy experiments  
- 📊 Calculate confidence intervals using R magic
- 🎲 Discover sampling variability through physical activities

## 🎈 Ice Breaker Activity: Rainbow Token Count
*Duration: 10 minutes*

Welcome, data explorers! Let's start our statistics adventure with a fun token counting game!

**What we'll do:**
- Each team gets a bag of colorful tokens (red, blue, green, yellow)
- Count how many tokens of each color you have
- Write your results on the whiteboard
- Compare with other teams - are the results the same?

**The Magic Question:** Why do different teams get different numbers? This is our first taste of **variability**!

<img src="PLACEHOLDER_GIF_URL" alt="Kids counting colorful tokens" style="width: 100%; height: auto;">

## 1. Central Tendency: Meet the Statistical Triplets
*Duration: 45 minutes*

### 1.1 What is Central Tendency?
*Duration: 10 minutes*

💡 **What is Central Tendency?**
Think of central tendency like finding the "middle" or "typical" value in your data - just like finding the middle kid when your class lines up by height!

There are three magical ways to find the center:
- **Mean** - The average (add everything up and divide)
- **Median** - The middle value when you line things up
- **Mode** - The value that appears most often

### Spell 1: Measuring Magic Cows
*Duration: 25 minutes*

#### 🎈 Activity: Cow Height Investigation

**Physical Activity:**
1. Each team gets 10 toy cows of different sizes
2. Use rulers to measure each cow's height in centimeters
3. Record measurements in your data collection sheet
4. Enter your data into R using the code below!

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell01_measuring_cows.R` in your project files!

#### ✨ Challenge: Calculate the Three Centers!

💡 **Memory Tip:** 
- **Mean** = Add all and divide (like sharing pizza equally)
- **Median** = Middle kid in a line
- **Mode** = Most popular choice

<img src="PLACEHOLDER_GIF_URL" alt="Kids measuring toy cows with rulers" style="width: 100%; height: auto;">

### 1.2 Understanding Spread: How Spread Out is Our Data?
*Duration: 10 minutes*

### Spell 2: Cow Height Spread
#### 🎈 Activity: How Different Are Our Cows?

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell02_cow_spread.R` in your project files!

💡 **What does Standard Deviation mean?**
Think of it like this: If standard deviation is small, your cows are similar heights (like siblings). If it's big, you have both tiny and giant cows (like a mix of babies and adults)!

## 2. Sampling Adventure: The Great Candy Investigation
*Duration: 50 minutes*

### 2.1 What is Sampling?
*Duration: 10 minutes*

💡 **What is Sampling?**
Imagine you want to know how many fish are in the entire ocean, but you can't count them all! So you take a net, catch some fish, count those, and use that to guess about the whole ocean. That's sampling!

**Population** = All the fish in the ocean (everything we want to know about)
**Sample** = The fish we caught in our net (the small group we actually study)

### Spell 3: Candy Bag Sampling
*Duration: 25 minutes*

#### 🎈 Activity: The Great Strawberry Candy Count

**Physical Activity:**
1. Each team chooses one mystery candy bag
2. Open your bag and count ALL the candies
3. Sort them by flavor and count how many are strawberry
4. Don't eat them yet - we need them for science! 🔬

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell03_candy_sampling.R` in your project files!

💡 **What did you notice?** The samples give us different results each time! This is called **sampling variability**.

<img src="PLACEHOLDER_GIF_URL" alt="Kids sorting colorful candies by flavor" style="width: 100%; height: auto;">

### 2.2 Sampling Distribution Magic
*Duration: 15 minutes*

### Spell 4: Many Samples Adventure
#### 🎈 Activity: What if we took 100 samples?

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell04_sampling_distribution.R` in your project files!

💡 **The Magic Discovery:** Even though individual samples vary, the average of many samples gets close to the true population value!

## 3. Bootstrapping: The Time Travel Sampling Trick
*Duration: 40 minutes*

### 3.1 What is Bootstrapping?
*Duration: 10 minutes*

💡 **What is Bootstrapping?**
Imagine you have only one bag of candies, but you want to know what would happen if you had many bags like it. Bootstrapping is like a time machine - you sample from your one bag WITH replacement (putting candies back) to simulate having many similar bags!

### Spell 5: Candy Bootstrap Adventure
*Duration: 30 minutes*

#### 🎈 Activity: The Magical Candy Replacement Trick

**Physical Activity:**
1. Take one candy from your bag
2. Look at its flavor and write it down
3. **Put it back in the bag!** (This is the magic part)
4. Shake the bag and repeat 10 times
5. Count how many strawberry candies you drew

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell05_bootstrapping.R` in your project files!

💡 **The Big Discovery:** Bootstrapping from one sample gives us similar information to taking many samples from the population!

<img src="PLACEHOLDER_GIF_URL" alt="Kids putting candies back in bag for bootstrap sampling" style="width: 100%; height: auto;">

## 4. Confidence Intervals: How Sure Are We?
*Duration: 30 minutes*

### 4.1 What is a Confidence Interval?
*Duration: 10 minutes*

💡 **What is a Confidence Interval?**
Think of it like this: If someone asks "How tall are the students in your school?" you might say "Most are between 140cm and 160cm tall." That's a confidence interval - a range where we think the true answer lies!

### Spell 6: Building Confidence Intervals
*Duration: 20 minutes*

#### 🎈 Activity: How Confident Are We About Our Candy Proportion?

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell06_confidence_intervals.R` in your project files!

💡 **Memory Tip:** Being more confident (99% vs 90%) means we need a wider net to catch the true answer!

## 5. 📋 Pro Tips Cheatsheet

### Central Tendency
- **Mean**: Add all values and divide by count `mean(data)`
- **Median**: Middle value when sorted `median(data)`  
- **Mode**: Most frequent value `table(data)` then find max
- **Standard Deviation**: How spread out data is `sd(data)`

### Sampling Concepts
- **Population**: Everything we want to study
- **Sample**: Small part we actually measure
- **Sampling Variability**: Samples give different results
- **Sample Size Effect**: Bigger samples = less variability

### Bootstrap Magic
- **Bootstrap Sample**: Sample WITH replacement from original data
- **Bootstrap Distribution**: Pattern from many bootstrap samples
- **Key Insight**: Bootstrap approximates what we'd get with many samples

### Confidence Intervals
- **95% CI**: We're 95% confident true value is in this range
- **Calculation**: Use middle 95% of bootstrap distribution
- **Interpretation**: "We're X% confident the true value is between A and B"

### R Functions You Learned
```r
mean(data)                    # Calculate average
median(data)                  # Find middle value
sd(data)                      # Standard deviation
sample(data, size, replace)   # Take samples
quantile(data, probability)   # Find percentiles
table(data)                   # Count frequencies
```

## 6. 🆘 Troubleshooting Cheatsheet

### Common Mistakes and Fixes

**🐛 Error: "object not found"**
- **What it means:** You forgot to create a variable
- **Why it happens:** Trying to use something before defining it
- **The Fix:** Make sure you run the lines that create your variables first

**🐛 My mean/median don't make sense**
- **What it means:** Your data might have errors
- **Why it happens:** Wrong measurements or typing mistakes
- **The Fix:** Check your cow_heights vector - are all numbers reasonable?

**🐛 Error: "replacement has different length"**
- **What it means:** Your vector has wrong number of items
- **Why it happens:** Missing comma or extra/missing numbers
- **The Fix:** Count your cow measurements - should be 10 numbers

**🐛 Bootstrap results look weird**
- **What it means:** Something wrong with your original sample
- **Why it happens:** Original data had errors
- **The Fix:** Go back and check your candy counting

**🐛 Confidence interval too wide/narrow**
- **What it means:** This is normal! Different confidence levels give different widths
- **Why it happens:** 99% intervals are wider than 90% intervals
- **The Fix:** No fix needed - this is how statistics works!

**🐛 Histogram looks empty or weird**
- **What it means:** Not enough data points or wrong bins
- **Why it happens:** Too few samples or wrong bin size
- **The Fix:** Try `bins = 5` or `bins = 15` in your ggplot

**💡 Remember:** In statistics, different results each time is NORMAL - that's the whole point of studying variability!