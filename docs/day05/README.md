---
layout: default
title: Day 5 - Machine Learning & AI
---

# 🧙‍♀️ Day 5: Machine Learning & AI

*Welcome to the AI Academy where Oda the Data Otter discovers machine learning magic and explores the ethical future of artificial intelligence!*

```{image} ../../images/logo1.png
:alt: logo1
:width: 50%
```

## 🎯 Learning Objectives

By the end of today, you will:
- 🧠 Understand what machine learning is and how computers learn from data
- 🎯 Learn about training and testing data through hands-on activities
- 🔍 Master K-Nearest Neighbors (KNN) classification with real datasets
- 🤖 Explore different types of AI and their real-world applications
- ⚖️ Discuss AI ethics, bias, and responsible technology use
- 🔮 Use generative AI tools like Claude to help with coding
- 📊 Conduct your own AI model comparison experiment

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMDJnNmZmNDMzaXZqZTk1NmQxejB6ZnNlcWhrMjN2ZmtpbXhkemI0ZyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/OOmn3L2GZB1w38CFW3/giphy.gif" alt="hello_robot" style="width: 60%; height: auto;">

> ✨ Extra Challenge (Optional)
> 
> - Ready for something more challenging? Try these extra challenging scripts in [Posit Cloud](https://posit.cloud)!:
>   1. Work through the extra challenging worksheet `activities/day05_extra_challenge.Rmd`.
> - If you get stuck, reach out to your instructor for help!

## 📥 How to Download Your Folder/Files from Posit Cloud

Follow these quick steps to save your work to your computer:

1. In Posit Cloud, open the Files pane (bottom-right).
2. Click the checkbox next to the folder or files you want (for example, `day05/` or a single `.Rmd`).
3. Click More (with blue gear icon) → Export.
4. A `.zip` file will download with your selected items.

```{image} ../../images/save.png
:alt: save
:width: 100%
```


💡 Pro tip: If you don’t select anything, Export will download the current folder you’re viewing.

## 1. Ice Breaker: Human KNN Game (*Duration: 10 minutes*)

*Just like Oda the Data Otter, we'll start by understanding how neighbors help us make decisions!*

**🎈 Activity: Sticky Note Classification**
- Each student gets a colored sticky note (red, blue, or green)
- Spread out randomly across the classroom
- Instructor walks to a random spot and predicts their "color" based on the K=3 closest students
- Try different K values (1, 5, 7) and see how predictions change!
- Let's start **Moving**!

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExbTlrM2U4NmJvODRqZDJ6ZWF4ZWk3Y2J3eHFkajZzMW5wYnUwdGMxMCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/X7jjWeC03QDT2/giphy.gif" alt="snail walking" style="width: 100%; height: auto;">

**💡 Key Discovery:** *The number of neighbors (K) affects our predictions!*

## 2. Meet Ada: Oda's Inspiration (*Duration: 15 minutes*)

### 2.1 Why is Oda called "Oda"? 

Oda the Data Otter is named after **Ada Lovelace** (1815-1852), the world's first computer programmer! Ada wrote the first algorithm intended to be processed by a machine and envisioned that computers could do more than just calculate numbers.

```{image} ../../images/ada.png
:alt: ada
:width: 50%
```

*Image credit: By Antoine Claudet. Shared by Paul Graham on X.com. Public Domain. Source: [Wikimedia Commons](https://commons.wikimedia.org/w/index.php?curid=166285599) {cite}`Claudet1843AdaPortrait`*

**🎈 Activity: Ada's Vision Circle**
- Share what you think computers can do today that Ada might not have imagined
- Discuss: What might computers do in the future that we can't imagine yet?

## 3. KNN Machine Learning Magic (*Duration: 45 minutes*)

### 3.1 What is Machine Learning? (*Duration: 10 minutes*)

**💡 What is Machine Learning?**
Think of machine learning like teaching a computer to recognize patterns, just like how you learned to recognize different dog breeds or your friends' handwriting!

**Real-world examples:**
- Netflix suggesting movies you might like
- Email filtering spam messages  
- Photo apps recognizing faces
- Voice assistants understanding speech

**🎈 Activity: Pattern Recognition Challenge**
Look at these examples and guess what the computer learned to do:
- Show images of email classification
- Show recommendation examples
- Discuss: How do you think the computer "learned" these patterns?

### 3.2 Training vs Testing: The Golden Rule (*Duration: 10 minutes*)

**💡 What is Training and Testing Data?**
Just like studying for a test, computers need practice data (training) and then get tested on new data they've never seen before!

**The Golden Rule:** Never let your computer "cheat" by seeing the test answers during training!

**🎈 Activity: Study Buddy Analogy**
- Training data = Practice problems you study with
- Testing data = The actual exam (new problems)
- Why would it be cheating to study using the exact exam questions?

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3M213ZTZraWtndTdoOXhjMmd0Mnhwczg3ZnRrY3I1eWJkdWp4ZTVqZCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/GtmmEUMZbo1hhRAi96/giphy.gif" alt="robot_running" style="width: 100%; height: auto;">

### Spell 1: KNN Classification with Magical Creatures

**📁 Find this spell in [Posit Cloud](https://posit.cloud):** Look for the file `day05_spell01_magical_knn.R` in your project files!

#### 🎈 Activity: Predict Magical Creature Types
Using Oda's magical creature dataset, predict whether a new creature is friendly or mischievous based on their characteristics!

**✨ Challenge:** Try different K values and see which works best!

### Spell 2: Your Own KNN Adventure

**📁 Find this spell in Posit Cloud:** Look for the file `day05_spell02_choose_dataset.R` in your project files!

#### 🎈 Activity: Pick Your Classification Quest
Choose from three magical datasets:
1. 🏰 Hogwarts House Sorting (personality traits → house)
2. 🌟 Pokemon Type Prediction (stats → type) 
3. 🎵 Music Genre Classification (features → genre)

Build your own KNN model and test its accuracy!

**✨ Challenge:** Can you get over 80% accuracy?

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3d3JoczFnc2wzbzMwN3JqeXNhM2Nxd3AwdGN4NTU1bHBtdHUza3p3bCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/aDKMe14FKM1TEyjm1l/giphy.gif" alt="robot_learning" style="width: 100%; height: auto;">

## 4. AI Exploration & Ethics (*Duration: 75 minutes*)

### 4.1 What is AI? Brainstorm Session (*Duration: 15 minutes*)

#### 🎈 Activity: AI Definition Challenge
**Step 1:** With your neighbor, come up with a definition of AI
**Step 2:** Your neighbor tries to find something that fits your definition but ISN'T actually AI
**Step 3:** Refine your definition!

**Examples to consider:**
- Calculator vs ChatGPT
- GPS navigation vs self-driving car
- Thermostat vs smart home assistant

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMDJnNmZmNDMzaXZqZTk1NmQxejB6ZnNlcWhrMjN2ZmtpbXhkemI0ZyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/An4vQcXaC6xjiA6ZX3/giphy.gif" alt="otters" style="width: 100%; height: auto;">

### 4.2 Programming with AI: Claude Magic (*Duration: 25 minutes*)

### Spell 3: Claude Coding Assistant

**📁 Find this spell in Posit Cloud:** Look for the file `day05_spell03_claude_helper.R` in your project files!

#### 🎈 Activity: AI-Powered Coding
Learn how to use Claude (AI assistant) to help write R code:

**💡 How to Ask AI for Code Help:**
1. Be specific about what you want
2. Include examples of your data
3. Ask for explanations, not just code
4. Always test the code yourself!

**✨ Challenge:** Use Claude to create a visualization you've never made before!

### 4.3 AI Model Battle Arena (*Duration: 25 minutes*)

### Spell 4: Chatbot Arena Experiment

**📁 Find this spell in Posit Cloud:** Look for the file `day05_spell04_chatbot_arena.R` in your project files!

#### 🎈 Activity: Secret AI Evaluation
Each student gets a secret evaluation criteria:
- 🎨 Most creative response
- 📖 Most realistic answer  
- 🤓 Most technical accuracy
- 😊 Most helpful tone

Compare responses from different AI models and record results!

**✨ Challenge:** Analyze the class results - which AI model won overall?

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3cnVnOGQ4bXFwcjdmMGhjeGIzcjI3ZGwyano2bTN6NzZnYW4zdGV0ciZlcD12MV9naWZzX3NlYXJjaCZjdD1n/GiNyo8KD5j9mM/giphy.gif" alt="minion_yeah" style="width: 100%; height: auto;">

### 4.4 AI Ethics Deep Dive (*Duration: 10 minutes*)

#### 🎈 Activity: Ethics Discussion Circle

**Big Questions:**
- Why did different students rate AI models differently?
- Is AI objective or does it reflect human bias?
- Whose values are being encoded in AI systems?
- How can we make AI more fair and inclusive?

**Real-world examples:**
- Facial recognition working differently for different skin tones
- AI hiring tools showing gender bias
- Language models reflecting cultural biases


## 5. Optional: Cursor IDE Demo (*Duration: 10 minutes - if time allows*)

### 5.1 Advanced AI Coding Tools

**💡 What is Cursor IDE?**
An advanced code editor where AI helps you write code in real-time!

**🎈 Activity: Watch the Magic**
- See how AI can complete your code as you type
- Understand how professional developers use AI tools
- Discuss: How might this change programming in the future?

## 6. Camp Celebration & Survey (*Duration: 10 minutes*)

### 6.1 Final Reflection Circle

**🎈 Activity: Data Science Journey Reflection**
- What was your favorite magical moment this week?
- Which spell (activity) taught you the most?
- How will you use your new data science powers?

### 6.2 Survey & Feedback
Complete the camp evaluation survey to help us make future camps even more magical!

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3cGlubDAwZnl1ZmFtZTYyNm9wc3VrNnQzYW1zOGRsbW9iYnRpY2VwYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/FyH83LEK2hytq/giphy.gif" alt="friday" style="width: 100%; height: auto;">

## 7. 📋 Pro Tips Cheatsheet

### Machine Learning Essentials
- **Training Data:** Data used to teach the computer patterns
- **Testing Data:** New data used to check if the computer learned correctly
- **K-Nearest Neighbors:** Predicts based on the K closest examples
- **Cross-validation:** Testing multiple ways to get better estimates

### AI and Ethics
- **AI Definition:** Systems that can perform tasks typically requiring human intelligence
- **Bias in AI:** When AI systems reflect unfair human prejudices
- **Generative AI:** AI that creates new content (text, images, code)
- **Responsible AI:** Building AI systems that are fair, transparent, and beneficial

### Working with AI Tools
- **Be Specific:** Give clear, detailed instructions to AI assistants
- **Always Verify:** Test and check AI-generated code yourself
- **Iterate:** Refine your questions based on AI responses
- **Learn Together:** Use AI as a learning partner, not a replacement for understanding

## 8. 🆘 Troubleshooting Cheatsheet

### Common KNN Issues
**Problem:** My accuracy is very low
- **What it means:** Your model isn't learning the patterns well
- **Why it happens:** Wrong K value, need data standardization, or poor features
- **The Fix:** Try different K values, check if you standardized data, consider using different variables

**Problem:** Error "object not found" in KNN
- **What it means:** R can't find a variable or function you're trying to use
- **Why it happens:** Forgot to load tidymodels, typo in variable name
- **The Fix:** Run `library(tidymodels)`, check spelling of variable names

### AI Tool Challenges
**Problem:** Claude gives code that doesn't work
- **What it means:** The AI didn't understand your specific context
- **Why it happens:** Instructions weren't clear enough, missing data context
- **The Fix:** Provide more specific details, share example data, ask for explanations

**Problem:** Different students get very different results
- **What it means:** This is normal! People have different perspectives
- **Why it happens:** We all have different values and experiences
- **The Fix:** This isn't a bug - it's a feature that teaches us about bias and perspective!