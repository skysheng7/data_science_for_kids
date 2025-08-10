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

## 🎈 Ice Breaker Activity: Human Histogram & Statistics Discovery
*Duration: 30 minutes*

🎉 Today, YOU become the data points! We'll use our own heights and birthdays to discover the magic of mean, median, and mode.

### Round 1: Height Histogram & Mean Discovery
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


### Round 2: Birthday Block Building & Mode/Median Discovery
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

## 1. Distribution Detective Mission 🔍
*Duration: 35 minutes*

### 1.1 The Shape of Data Magic
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

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell01_distribution_detective.R` in your project files!

**🔍 Detective Challenge Questions:**
1. Which creature type has mean and median closest together? Why?
2. Which creature type shows the biggest difference between mean and median?
3. When data is skewed, which is better to use: mean or median?

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExbzNmeGFuMjFheDE1aHl2cWUwcGFzamllY255bjM2YXFvMzIwajVmZiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/QontxdcIsa2iI/giphy.gif" alt="dragon" style="width: 60%; height: auto;">

💡 **Detective Rules:**
- **Symmetrical data:** Mean ≈ Median (use either one!)
- **Skewed data:** Median is often more "typical" than mean
- **Outliers:** Can pull the mean away from where most data sits


## 2. The Great Sampling Adventure 🎲
*Duration: 40 minutes*

### 2.1 Understanding Populations vs Samples
*Duration: 10 minutes*

💡 **The Big Picture:**
Imagine you want to know what percentage of creatures in the entire Enchanted Forest are dragons, but you can't count all million creatures! So you explore small areas and use those to make educated guesses.

**🌲 Population** = All creatures in the entire Enchanted Forest (everything we want to know about)
**🔍 Sample** = The creatures we find in one small area (the small group we actually study)  
**📊 Statistic** = Something we calculate from our sample (like "30% of creatures in our sample are dragons")
**🎯 Inference** = Using our sample to make conclusions about the whole population, knowing how uncertain we are

### 2.2 Physical Candy Sampling Challenge
*Duration: 15 minutes*

💡 **What is Sampling?**
Imagine you want to know how many fish are in the entire ocean, but you can't count them all! So you take a 
net, catch some fish, count those, and use that to guess about the whole ocean. That's sampling!

**🌊 Population** = All the fish in the ocean (everything we want to know about)
**🎣 Sample** = The fish we caught in our net (the small group we actually study)

#### 🎈 Activity: The Green Candy Mystery

**🍬 The Challenge:** Our classroom has a GIANT bowl with hundreds of mixed candies. Your mission: discover what percentage are green!

**🏆 Championship Rules:**
1. **👁️ Blind Grab:** Each wizard closes their eyes and grabs exactly 10 candies
2. **🟢 Count Green:** Count how many of your 10 candies are green  
3. **📝 Record Results:** Enter your results in the Google Form
4. **📊 Class Data:** We'll collect everyone's results and see what happens!

**🤔 Prediction Questions Before We Start:**
- Will everyone get the same number of green candies? Why or why not?
- What do you think the true percentage of green candies is?

💡 **The Magic Discovery:** Different samples give different results! This is called **sampling 
variability** - and it's totally normal!

### Spell 2: Digital Sampling Magic
*Duration: 15 minutes*

#### 🎈 Activity: The Magical Creature Population Study

**🐉 The Setup:** We have a population of 1000 magical creatures where exactly 30% are dragons. Let's see what happens when we take different sized samples!

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell02_sampling_adventure.Rmd` in your project files!

**🔬 The Three Great Experiments:**
1. **Small Samples (Size 10):** Take 100 samples of 10 creatures each
2. **Medium Samples (Size 50):** Take 100 samples of 50 creatures each  
3. **Large Samples (Size 100):** Take 100 samples of 100 creatures each

**🎯 Key Discoveries We'll Make:**
- All sample sizes give averages close to the truth (30% dragons)
- Larger samples are more consistent and reliable
- Sampling distributions form beautiful bell shapes!
- The **spread** decreases as sample size increases

💡 **The Magic Moment:** When we increase sample size, we don't change the average, but we make our estimates much more reliable!

**🔬 Statistical Inference Concepts We'll Discover:**

**🌲 Population** = All creatures in the entire Enchanted Forest (everything we want to know about)
**🔍 Sample** = The creatures we find in one small area (the small group we actually study)  
**📊 Statistic** = Something we calculate from our sample (like "30% of creatures in our sample are dragons")
**🎯 Inference** = Using our sample to make conclusions about the whole population, knowing how uncertain we are about our conclusion

💡 **What is Bootstrapping?**
Imagine you have only one bag of candies, but you want to know what would happen if you had many bags like it. Bootstrapping is like a time machine - you sample from your one bag WITH replacement (putting candies back) to simulate having many similar bags!

**🕐 The Magic:** We can travel through time by sampling WITH replacement!

### Spell 4: Bootstrap Bootcamp Relay
*Duration: 35 minutes*

#### 🎈 Activity: The Ultimate Replacement Relay Challenge

**🏃‍♀️ Physical Relay Race Setup:**
- **Station 1:** Sample Grabber (grab 1 candy)
- **Station 2:** Color Recorder (write down the color)  
- **Station 3:** Replacer (put candy back and shake bag)
- **Station 4:** Counter (tally the results)

**🏆 Relay Race Rules:**
1. Teams line up at Station 1
2. Each team member does one complete rotation through all stations
3. **Key Rule:** Always put the candy back! (This is bootstrap magic)
4. Race to complete 20 bootstrap samples first
5. Calculate your team's bootstrap mean

**🎯 The Ultimate Challenge:** Which team can bootstrap fastest while getting results closest to the true population?

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell04_bootstrap_bootcamp.Rmd` in your project files!

💡 **The Big Discovery:** Bootstrapping from one sample gives us similar information to taking many samples from the population!

<img src="PLACEHOLDER_GIF_URL" alt="Kids in relay race putting candies back in bags" style="width: 100%; height: auto;">

## 4. Game 4: R Magic + Confidence Interval Casino 🎰
*Duration: 40 minutes*

### 4.1 Welcome to the Statistical Casino
*Duration: 10 minutes*

💡 **What is a Confidence Interval?**
Think of it like this: If someone asks "How tall are the students in your school?" you might say "Most are between 140cm and 160cm tall." That's a confidence interval - a range where we think the true answer lies!

**🎰 Casino Challenge:** Use your bootstrap data to "bet" on where the true population mean lies!

### Spell 5: Confidence Interval Casino Challenge
*Duration: 30 minutes*

#### 🎈 Activity: The Greatest Statistical Bet Ever

**🎮 Casino Game Setup:**
1. **Input Your Data:** Enter your bootstrap results into the pre-loaded R script
2. **R Magic Happens:** Watch R generate cool confidence interval visualizations
3. **Place Your Bet:** Predict whether the true population mean falls in your interval
4. **The Big Reveal:** Teacher counts the actual population bowl
5. **Winners Circle:** Teams with correct intervals get extra candy!

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell05_confidence_casino.Rmd` in your project files!

**🏆 Casino Scoring:**
- Correct 90% confidence interval bet: 5 points
- Correct 95% confidence interval bet: 10 points  
- Correct 99% confidence interval bet: 15 points
- **Jackpot:** If your interval captures the true mean: 20 bonus points!

💡 **Casino Wisdom:** Being more confident (99% vs 90%) means you need a wider net to catch the true answer - but you're more likely to win!

<img src="PLACEHOLDER_GIF_URL" alt="Kids cheering at computer screens showing confidence intervals" style="width: 100%; height: auto;">

## 5. Game 5: Sampling Chaos Challenge 🌪️
*Duration: 25 minutes*

### Spell 6: The Ultimate Sampling Method Showdown
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

📁 **Find this spell in Posit Cloud:** Look for the file `day04_spell06_sampling_chaos.Rmd` in your project files!

**🤯 The Epic Discovery:** Different sampling methods give WILDLY different results! Good sampling is CRUCIAL for good science!

<img src="PLACEHOLDER_GIF_URL" alt="Kids rotating between sampling stations" style="width: 100%; height: auto;">

## 6. Victory Celebration & Reflection Circle 🎉
*Duration: 10 minutes*

### 🎈 Activity: What Did We Discover?

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

**🐛 "I forgot to put the candy back during bootstrap!"**
- **What it means:** You broke the bootstrap rule
- **Why it happens:** Excitement and rushing
- **The Fix:** Start that round over, always replace the candy!

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