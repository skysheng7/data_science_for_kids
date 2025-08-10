---
layout: default
title: Day 4 - Statistics Ocean
---

# 🌊 Day 4: Statistics Ocean

*Join Oda the Data Otter as she dives deep into the magical Statistics Ocean, where colorful data reveals the secrets of mean, median, and sampling through epic games and challenges!*

```{image} ../../images/stat.png
:alt: stat
:width: 50%
```

### 🎯 Learning Objectives
- 🎯 Become human data points in the ultimate "Human Histogram" game
- 🕵️ Master detective skills finding mean, median, and mode through data distribution patterns
- 🎲 Discover the power of taking samples from the population and sampling distribution magic
- 🔄 Understand how sample size affects the reliability of our conclusions
- 📈 Explore different distribution shapes and what they tell us about data
- 🏆 Experience the power of statistical inference through games

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2d5YThoNXRucHU2eDJmYWYxbzJsaTBlc2VhczBnYTkyM3pwcGNuNiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l46CdoZqbJxQMOvjW/giphy.gif" alt="hello_fish" style="width: 60%; height: auto;">

## 1. 🎈 Ice Breaker Activity: Human Histogram & Statistics Discovery
*Duration: 30 minutes*

🎉 Today, YOU become the data points! We'll use our own heights and birthdays to discover the magic of mean, median, and mode.

### 1.1 Height Histogram & Mean Discovery
*Duration: 15 minutes*

1. **🧙‍♀️ Human Lineup:** Line up by height from shortest to tallest
2. **🔍 In-Person Investigation:** 
   - Find the shortest wizard (minimum)
   - Find the tallest wizard (maximum) 
   - Find the middle wizard (median) - count from both ends!
3. **📝 Data Collection:** Enter your wizard name and height into our magical data form: 
https://forms.gle/TG2dgNwknN6KGTcE6
4. **📏 What if I don't know my height?:** 
    - Try to give a guess about your height using reference objects or people around you. 
        - For example, a regular paper is 21 cm in width and 30 cm in height. 
        - Your instructor Sky is 175 cm tall.
5. **🧮 Calculate Our Class Mean Height:** We'll add up everyone's heights and divide by the number of wizards in our class
6. **💻 R Magic Verification:** Watch as we put your data into R and compare our human results with computer calculations!

**🤔 Why Do We Care About Mean?**
- The mean tells us what a "typical" wizard in our class looks like!
- Other examples of using **Mean**:
    - 🌡️ **Weather Wizard:** Weather apps use mean temperature to tell you if it's a hot or cold month
    - 🏀 **Sports Star:** Basketball players track their mean points per game to see how good they are
    - 🍕 **Pizza Party Planning:** If you know the mean number of pizza slices each friend eats, you can order the right amount!

### 1.2 Birthday Block Building & Mode/Median Discovery
*Duration: 15 minutes*

1. **🧱 Block Distribution:** Each wizard gets one block
2. **📅 Month Stations:** Set up 12 month stations at the front of the classroom  
3. **🏗️ Building Together:** Place your block on your birth month pile
4. **💻 R Data Collection:** As each wizard places their block, we'll enter their birth month into our R list
5. **📊 Visual Discovery:** Watch our classroom histogram grow in real-time!
6. **🔍 Statistical Magic:** 
   - Find the **mode** (tallest stack = most popular month)
   - Calculate the **mean** month using R
7. **🤔 Pattern Spotting:** Which months are popular? Any empty months?

💡 **Pro Tips:** Different types of data need different measures!
- **Mean** = Add everyone's height up and divide by total number of students in the class
- **Median** = Middle detective in a lineup of counts
- **Mode** = Most popular birthday month in the room

**🤔 Why Do We Care About Median?**
- The median shows us the "middle" value that splits our data in half!
- Other examples of using **Median**:
    - 🏠 **House Prices:** When some houses cost millions and others cost thousands, median gives a better "typical" price than mean
    - 🍎 **Test Scores:** Median helps teachers see how the "middle" student performed, not affected by super high or low scores. This helps teachers to see how well the class in general understands a new concept.

**🤔 Why Do We Care About Mode?**
- The mode tells us what happens most often - the most popular choice!
- Other examples of using **Mode**:
    - 👕 **T-Shirt Sizes:** Stores need to know which size sells most (mode) to stock the right amounts
    - 🍦 **Ice Cream Flavors:** Ice cream shops track which flavor is ordered most often to plan their inventory

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMWpsYTV5ZmFvb2ZnbWJ5Njhsb3JwajZxeXJ2ZnpxOXFzNW5lODhmbSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/VgSjnwSoqiPjRRIJ1F/giphy.gif" alt="do_it" style="width: 60%; height: auto;">

## 2. Distribution Detective Mission 🔍
*Duration: 35 minutes*

### 2.1 The Shape of Data Magic
*Duration: 5 minutes*

💡 **What are Data Distributions?**
Just like how people can be tall, short, or in-between, data comes in different shapes! Some data is perfectly balanced (symmetrical), some leans to one side (skewed), and some has unusual outliers that surprise us.

**Today's Mission:** Investigate three magical creature types with completely different distributions!

### Spell 1: Distribution Detective Investigation  
*Duration: 30 minutes*

#### 🎈 Activity: The Three Magical Distribution Mysteries

**🐉 Mystery 1: Dragon Power (Symmetrical Distribution)**
- Most dragons have medium power
- Few dragons are very weak or very strong
- Mean and median are best friends (very close together)!

**🦄 Mystery 2: Unicorn Magic (Left-Skewed Distribution)**  
- Most unicorns have high magic
- A few unicorns have very low magic (creates a "tail" on the left)
- Mean gets "pulled down" by the low values

**🔥 Mystery 3: Phoenix Energy (Right-Skewed Distribution)**
- Most phoenixes have low energy  
- A few phoenixes have extremely high energy (creates a "tail" on the right)
- Mean gets "pulled up" by the high values

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell01_distribution_detective.Rmd` in your project files!

**🔍 Detective Challenge Questions:**
1. Which creature type has mean and median closest together? Why?
2. Which creature type shows the biggest difference between mean and median?
3. When data is skewed, which is better to use: mean or median?

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExbzNmeGFuMjFheDE1aHl2cWUwcGFzamllY255bjM2YXFvMzIwajVmZiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/QontxdcIsa2iI/giphy.gif" alt="dragon" style="width: 50%; height: auto;">

💡 **Detective Rules:**
- **Symmetrical data:** Mean ≈ Median (use either one!)
- **Left-skewed distributions:** Mean < Median (mean gets pulled down because of outliers with small values sitting on the left side)
- **Right-skewed distributions:** Mean > Median (mean gets pulled up because of outliers with large values sitting on the right side)
- **When data is skewed,** median is often a better measure of "typical" value
- **Outliers:** Can pull the mean away from where most data sits

![skewness file](../../images/distribution.png)

## 3. The Great Sampling Adventure 🎲
*Duration: 65 minutes*

### 3.1 Understanding Populations vs Samples
*Duration: 5 minutes*

💡 **The Big Picture:**
Imagine you want to know what percentage of creatures in the entire Enchanted Forest are dragons, but you can't count all million creatures! So you explore small areas and use those to make educated guesses.

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3djkxamhiZ3FmZDMzOWszY3dmdTJlbTM4eHM1MjAxa2ltdHZzZWI3biZlcD12MV9naWZzX3JlbGF0ZWQmY3Q9Zw/143ujxyRoVMJVK/giphy.gif" alt="dragon" style="width: 60%; height: auto;">

- **🌲 Population** = All creatures in the entire Enchanted Forest (everything we want to know about)

- **🔍 Sample** = The creatures we find in one small area (the small group we actually study)

- **🎯 Parameter** = The true characteristic of the entire population (like "exactly 30% of all forest creatures are dragons")

- **📊 Statistic** = Something we calculate from our sample (like "25% of creatures in our sample are dragons")

- **🎯 Inference** = Using our sample to make conclusions about the whole population, knowing how uncertain we are

### 3.2 Game 1: The Enchanted Halloween Neighborhood Mystery 🎃
*Duration: 20 minutes*

#### 3.2.1 🎈 Activity: Statistical Wizards Save Halloween

**📖 The Story:**

The Mgaic Council of Halloween has received reports that the Shadow Monster has been cursing neighborhoods, turning precious candies into worthless shadow stones! As young Statistical Wizards, your mission is to determine if the **Enchanted Forest Neighborhood** is safe for trick-or-treating.

![candy](../../images/candy.png)

**⚡ The Challenge:** 

The neighborhood has a magical protection spell - if it contains 80% or more real candies (not shadow stones), it's safe to visit. But beware! You only have **3 minutes of magical sight** to examine your sample before the spell fades.

**🧙‍♀️ The Mgaic Council Has Prepared:**

- "Time Crystal Bag" containing 10 items each (Mix of wrapped candies and shadow stones)
- Timer will be set to 3 minutes for **magical sighting**
- Magical google Form for data collection
    - URL: [https://forms.gle/pVVK2zBVovA1637Z9](https://forms.gle/pVVK2zBVovA1637Z9)
    - Enter "how many candies are in your bag" after you finish counting

**🪄 You will get:**

- Everyone gets one "Time Crystal Bag" containing 10 items

**⚡ The Magic Rules:**

1. **Incantation Phase:** Kids chant "Statistical powers, reveal the truth!" before opening their bags
2. **Counting Phase:** 5 minutes to count candies vs. shadow stones
3. **Decision Phase:** Each wizard declares if they think the neighborhood is "SAFE" or "CURSED"
4. **Data Crystal Phase:** Enter candy count, and your decision into the magical Google Form: [https://forms.gle/pVVK2zBVovA1637Z9](https://forms.gle/pVVK2zBVovA1637Z9)

💡 **The Magic Discovery:** Different samples give different results! This is called **sampling variability** - and it's totally normal!

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExbnV0YzFleHFjNjMyemxzc2M5emkwZTl6cmMyeTl5NW1sYWFsZnZzMSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/50WoQ8JdjyqzhxpBjP/giphy.gif" alt="surprise" style="width: 60%; height: auto;">


#### 3.2.2 💡 Pro Tips: Understanding Sampling Magic
*Duration: 5 minutes*

**🎯 What is a Sampling Distribution?**
Remember our candy bag game? Imagine if 100 different kids each got their own "Time Crystal Bag" with 10 items from the same magical neighborhood. Each kid counts their candies and gets a different result - maybe 6 candies, 8 candies, 7 candies, etc. If we collected ALL 100 results and made a graph showing how many kids got 6 candies, how many got 7, etc., that graph is called a **sampling distribution**! It shows us the pattern of what happens when **lots of samples** are taken from the same **population**.

**📊 What is Spread (Variability)?**
Spread tells us how "spread out" or scattered our data points are:
- **Small spread**: All your data points are close together (like 28%, 30%, 32% candies)
- **Large spread**: Your data points are far apart (like 15%, 30%, 45% candies)
- **Magic Rule**: Larger samples = smaller spread = more reliable results!

**🧮 What Does the Mean of the Sampling Distribution Tell Us?**
Here's the coolest part about our candy bag game! Let's say the magical neighborhood REALLY has 80% candies (that's the truth). If 100 kids each count their bags, some might get 6 candies, some 8, some 7, etc. But here's the magic: if you add up ALL their candy counts and find the average, you'll get very close to 8 candies (which equals 80%)! Even though each kid got different results, when we combine everyone's results, we get closer to the truth about the neighborhood!

**🔍 Real-Life Example:**
If the true percentage of dragons in the forest is 30%, and you take 100 different samples:
- Some samples might give you 25% dragons
- Some might give you 35% dragons  
- But the AVERAGE of all 100 sample percentages will be very close to 30%!

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3NW9pN2MxdGF6Y25jcXRtdml6Y3RpMmlsYmpxaTJ6YmFiam1ueXUwNyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/V6fMm9TDwdb5K7yjt8/giphy.gif" alt="" style="width: 70%; height: auto;">

#### 3.2.3 🎈 Activity: Statistical Wizards Save Halloween - Round 2!!
*Duration: 20 minutes*

> 🎉 Good News! The magical council has prepared more "Time Crystal Bag" for us!

![candy2](../../images/candy2.png)

**🪄 You will get:**

- Everyone gets 2 more "Time Crystal Bag"

**⚡ The Magic Rules:**

1. **Incantation Phase:** Kids chant "Statistical powers, reveal the truth!" before opening their bags
2. **Counting Phase:** 5 minutes to count candies vs. shadow stones
3. **Decision Phase:** Each wizard declares if they think the neighborhood is "SAFE" or "CURSED"
4. **Data Crystal Phase:** Enter candy count, and your decision into the magical Google Form: [https://forms.gle/dwMLreYBN4CHmWwh8](https://forms.gle/dwMLreYBN4CHmWwh8)

**🏆 Rewards & Competition:**

- **Prediction Points:** Kids who make the right prediction earn **EXTRA CANDY!**

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYWxsZXN1NTJyaXYwejNsbDEwNHlocjA3cWdqemRibnVuZ3B0YTBzMCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/3oz8xLZ1qiYR43jYE8/giphy.gif" alt="rabbit_dance" style="width: 60%; height: auto;">

### Spell 2: Digital Sampling Magic
*Duration: 15 minutes*

#### 3.2.4 🎈 Activity: The Magical Creature Population Study

**🐉 The Setup:** In the Enchanted Forest, we have a population of 1000 magical creatures where exactly 30% are dragons. Let's see what happens when we take different sized samples!

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell02_sampling_adventure.Rmd` in your project files!

**🔬 The Three Great Experiments:**
1. **Small Samples (Size 10):** Take 100 samples of 10 creatures each
2. **Medium Samples (Size 50):** Take 100 samples of 50 creatures each  
3. **Large Samples (Size 100):** Take 100 samples of 100 creatures each

**🎯 Key Discoveries:**
- All sample sizes give averages close to the truth (30% dragons)
- Larger samples are more reliable
- Sampling distributions form beautiful bell shapes!
- The **spread** decreases as sample size increases

💡 **The Magic Moment:** When we increase sample size, we make our estimates much more reliable!

### 3.3 Game 2: The Great Dragon Fire Sheep Rescue 🐑🔥
*Duration: 20 minutes*

#### 🎈 Activity: Bootstrap Magic & Confidence Prophecies
*Teaching Concept: Bootstrapping & Confidence Intervals*

**📖 The Story**
**URGENT QUEST ALERT!** The ancient Dragon of Mount Statistics has accidentally breathed fire across the Enchanted Meadows, where Farmer Luna (white sheep) and Farmer Obsidian (black sheep) graze their magical flocks. The fire didn't harm the sheep, but created a massive cloud of magical smoke that mixed all the flocks together!

The two farmers are worried and need to know how many of their sheep are mixed together in the smoky field. But here's the problem: the smoke is so thick that shepherds can only see a small group of sheep at a time, and all the water was used to put out the fire, so they can't wash the sheep to see their true colors clearly!

**⚡ The Challenge**
As Junior Statistical Shepherds, you must use the ancient art of **Bootstrap Magic** to estimate what percentage of the total flock is black sheep, and create a **Confidence Prophecy** (confidence interval) for your estimate.

**🧙‍♀️ Materials Needed:**
- Bags containing black and white tokens (representing sheep)
- Each bag has the same true proportion (suggest 60% black, 40% white)
- Small containers for bootstrap sampling
- Timer
- Google Form for CI submissions
- "Shepherd's Badge" stickers

**🎮 Game Setup & Rules**

**Phase 1: The Original Vision (Initial Sample)**
- Each child receives a "Smoke Sample Bag" with 15-20 tokens
- Count the black vs. white sheep in their original sample
- Calculate their initial estimate of the black sheep percentage

**Phase 2: The Bootstrap Prophecy Ritual**
1. **The Resampling Spell:** From their original sample, draw 10 tokens WITH REPLACEMENT (put each token back before drawing the next)
2. **Repeat the Magic:** Do this resampling 8-10 times, recording the percentage of black sheep each time
3. **The Confidence Prophecy:** Calculate their 90% confidence interval using their bootstrap samples
   - Simple method: Remove the highest and lowest values, use the range of remaining values

**Phase 3: The Grand Revelation**
- All shepherds enter their confidence intervals into the Royal Registry (Google Form)
- The Oracle (you) reveals the true population percentage
- **Victory Celebration:** Crown the Statistical Shepherds whose confidence intervals captured the true value!

**🏆 Competitive Elements:**
- **Prophecy Accuracy Award:** Whose CI contains the true value? **WIN EXTRA CANDY!**
- **Precision Prize:** Narrowest confidence interval that still captures the truth gets **BONUS TREATS!**
- **Team Oracle Challenge:** Everyone who participates gets candy, and the group celebrates their combined statistical power!

💡 **What is Bootstrapping?**
Imagine you have only one bag of candies, but you want to know what would happen if you had many bags like it. Bootstrapping is like a time machine - you sample from your one bag WITH replacement (putting candies back) to simulate having many similar bags!

**🕐 The Magic:** We can travel through time by sampling WITH replacement!

<img src="PLACEHOLDER_GIF_URL" alt="Kids doing bootstrap sampling with tokens" style="width: 100%; height: auto;">

## 4. R Magic + Confidence Interval Casino 🎰
*Duration: 40 minutes*

### 4.1 Welcome to the Statistical Casino
*Duration: 10 minutes*

💡 **What is a Confidence Interval?**
Think of it like this: If someone asks "How tall are the students in your school?" you might say "Most are between 140cm and 160cm tall." That's a confidence interval - a range where we think the true answer lies!

**🎰 Casino Challenge:** Use your bootstrap data to "bet" on where the true population mean lies!

### Spell 3: Bootstrap Bootcamp Challenge
*Duration: 15 minutes*

#### 🎈 Activity: Digital Bootstrap Training

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell03_bootstrap_bootcamp.Rmd` in your project files!

**🎯 Bootstrap Training Mission:**
1. **Load Your Physical Data:** Enter your sheep rescue bootstrap results
2. **R Bootstrap Magic:** Watch R perform thousands of bootstrap samples instantly
3. **Confidence Interval Creation:** Generate 90%, 95%, and 99% confidence intervals
4. **Visual Prophecy:** Create beautiful graphs showing your confidence ranges

💡 **The Big Discovery:** Bootstrapping from one sample gives us similar information to taking many samples from the population!

### Spell 4: Confidence Interval Casino Challenge
*Duration: 15 minutes*

#### 🎈 Activity: The Greatest Statistical Bet Ever

**🎮 Casino Game Setup:**
1. **Input Your Data:** Enter your bootstrap results into the pre-loaded R script
2. **R Magic Happens:** Watch R generate cool confidence interval visualizations
3. **Place Your Bet:** Predict whether the true population mean falls in your interval
4. **The Big Reveal:** Teacher reveals the actual population parameters
5. **Winners Circle:** Teams with correct intervals get extra candy!

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell04_confidence_casino.Rmd` in your project files!

**🏆 Casino Scoring:**
- Correct 90% confidence interval bet: 5 points
- Correct 95% confidence interval bet: 10 points  
- Correct 99% confidence interval bet: 15 points
- **Jackpot:** If your interval captures the true mean: 20 bonus points!

💡 **Casino Wisdom:** Being more confident (99% vs 90%) means you need a wider net to catch the true answer - but you're more likely to win!

<img src="PLACEHOLDER_GIF_URL" alt="Kids cheering at computer screens showing confidence intervals" style="width: 100%; height: auto;">

## 5. Sampling Chaos Challenge 🌪️
*Duration: 25 minutes*

### Spell 5: The Ultimate Sampling Method Showdown
*Duration: 25 minutes*

#### 🎈 Activity: Chaos Stations Discovery

**🚨 The Setup:** Five stations around the room with different sampling methods - discover how method affects results!

**🎯 Station Challenges:**
- **Station 1: "Careful Counter"** - Systematic sampling (every 3rd candy)
- **Station 2: "Speed Sampler"** - Rushed random (grab fast!)
- **Station 3: "Color Picker"** - Biased sampling (only grab your favorite colors)
- **Station 4: "Blindfold Challenge"** - True random sampling (eyes closed)
- **Station 5: "Tiny Sample Snatcher"** - Small samples (only 3 candies)

**🔄 Rotation Rules:**
- 4 minutes per station
- Record results at each station
- Compare final results across all methods

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell05_sampling_chaos.Rmd` in your project files!

**🤯 The Epic Discovery:** Different sampling methods give WILDLY different results! Good sampling is CRUCIAL for good science!

<img src="PLACEHOLDER_GIF_URL" alt="Kids rotating between sampling stations" style="width: 100%; height: auto;">

## 6. Victory Celebration & Reflection Circle 🎉
*Duration: 10 minutes*

### 6.1 What Did We Discover?

**🏆 Champions Recognition:**
- Announce team winners from each game
- Award "Statistician Badges" for different achievements:
  - 🕵️ Master Detective Badge
  - 🎲 Sampling Champion Badge  
  - 🔄 Bootstrap Wizard Badge
  - 🎰 Casino Winner Badge
  - 🌪️ Chaos Survivor Badge

**🤔 Reflection Questions:**
- What was the most surprising thing you learned today?
- Which game taught you the most about statistics?
- How could you use these detective skills in real life?

**📸 Memory Moment:** Take team photos with your badges and candy evidence!

## 7. 📋 Pro Tips Cheatsheet

### Detective Skills (Central Tendency)
- **Mean**: Add all candy counts and divide by number of colors
- **Median**: Line up counts from smallest to largest, find middle
- **Mode**: Which color appears most often in your evidence bag
- **Detective Memory**: Mean = sharing equally, Median = middle kid, Mode = most popular

### Sampling Wisdom  
- **Population**: The giant candy bowl (everything we want to know)
- **Sample**: Your blind grab (small part we study)
- **Sampling Variability**: Everyone gets different results - that's normal!
- **Good Sampling**: Random, unbiased, representative of population

### Bootstrap Magic Tricks
- **Bootstrap Sample**: Sample WITH replacement (put candies back!)
- **Bootstrap Power**: One sample can simulate many samples
- **Key Discovery**: Bootstrap results tell us about population patterns
- **Physical Rule**: Always shake the bag after replacing!

### Confidence Interval Casino
- **90% Confidence**: "We're 90% sure the true answer is in this range"
- **95% Confidence**: More sure, but need wider range
- **99% Confidence**: Very sure, but need very wide range
- **Casino Rule**: Higher confidence = wider net = better chance of winning

### Game Strategy Tips
- **Detective Work**: Sort candies carefully before counting
- **Random Sampling**: Keep eyes closed, no peeking!
- **Bootstrap Racing**: Speed + accuracy = winning combination
- **Casino Betting**: Pick confidence level based on how sure you want to be

### R Magic Commands
```r
# Basic stats detective tools
mean(candy_counts)           # Calculate average
median(candy_counts)         # Find middle value
table(candy_colors)          # Count each color

# Sampling and bootstrap
sample(colors, 10, replace = TRUE)    # Bootstrap sample
quantile(bootstrap_means, c(0.05, 0.95))  # 90% confidence interval
```

## 8. 🆘 Troubleshooting Cheatsheet

### Game Day Troubleshooting

**🐛 "My team's candy counts don't match others!"**
- **What it means:** Different samples give different results
- **Why it happens:** This is sampling variability - totally normal!
- **The Fix:** No fix needed - this is the magic of statistics!

**🐛 "I forgot to put the token back during bootstrap!"**
- **What it means:** You broke the bootstrap rule
- **Why it happens:** Excitement and rushing
- **The Fix:** Start that round over, always replace the token!

**🐛 "Our confidence interval missed the true answer!"**
- **What it means:** Sometimes intervals don't capture the truth
- **Why it happens:** That's why it's called 95% confidence, not 100%!
- **The Fix:** This is normal! 5% of the time you'll miss.

**🐛 Error: "object not found" in R**
- **What it means:** You forgot to create a variable
- **Why it happens:** Skipped a step in the activity
- **The Fix:** Go back and run all the code chunks in order

**🐛 "My sampling station results are crazy different!"**
- **What it means:** Different sampling methods give different results
- **Why it happens:** Bias affects sampling!
- **The Fix:** Perfect! This shows why good sampling matters.

**🐛 "The Google Form won't take my data!"**
- **What it means:** Data format might be wrong
- **Why it happens:** Numbers entered as text or missing values
- **The Fix:** Check that you're entering numbers only, no letters

**🐛 "My team is behind in the championship!"**
- **What it means:** Some teams finish activities faster
- **Why it happens:** Different working speeds
- **The Fix:** Focus on learning, not just winning!

**🐛 R code runs but graph looks weird**
- **What it means:** Your data might have unusual values
- **Why it happens:** Candy counting errors or typos
- **The Fix:** Double-check your candy counts before entering data

**💡 Game Day Wisdom:** Different results each round is PERFECT - that's exactly what we want to discover about statistics!