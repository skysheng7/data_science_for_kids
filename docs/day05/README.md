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
- 🎯 Learn about training and testing data, the golden rules in machine learning
- 🔍 Master K-Nearest Neighbors (KNN) classification
- 🤖 Explore different types of AI and their real-world applications
- ⚖️ Discuss AI ethics, bias, and responsible technology use
- 🔮 Use generative AI tools like Claude and Cursor to help with coding

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


💡 Pro tip: If you don't select anything, Export will download the current folder you're viewing.

## 1. What is Data Science?

### 1.1 Define Data Science 

**🎈 What is data science for you?**

### 1.2 Expert Definitions 

#### Definition 1: The Three Circles 🔵🟡🔴
> *"Data science is the intersection between computer science, statistics and domain knowledge"*

- **Computer Science** 💻 = The tools and programming to handle data
- **Statistics** 📊 = The math to find patterns and make predictions  
- **Domain Knowledge** 🏥🏫🌱 = Understanding the real-world problem (medicine, education, environment, etc.)

```{image} ../../images/ds.png
:alt: ds
:width: 50%
```

Examples of combining domain knowledge with data science skills: **Using AI to monitor animal welfare**

```{image} ../../images/ds_example.png
:alt: ds_example
:width: 100%
```

#### Definition 2: Reproducible and auditable 🔄
> *"The study, development and practice of reproducible and auditable processes to obtain insight from data"* {cite}`Timbers2024Reproducible`

```{image} ../../images/reproducible.png
:alt: reproducible
:width: 100%
```


```{image} ../../images/auditable.png  
:alt: auditable
:width: 100%
```

**💡 Key words explained:**
- **Reproducible** 🔄 = Others can follow your steps and get the same results
- **Auditable** 🔍 = Your work can be checked and verified by others
- **Processes** ⚙️ = Step-by-step methods, not just one-time analyses
- **Insights** 💡 = Meaningful discoveries that help make decisions

### 1.3 Connecting to Our Week

In the past 4 days, we have been learning: 

- **Computer Science skills** 💻 (R programming, if-else conditions, for loops)
- **Statistics concepts** 📊 (distributions, sampling, bootstrapping) 
- **Domain knowledge** 🌍 (apply data science skills to solve real problems, e.g., halloween candy investigation)
- **Reproducible work** 🔄 (documented steps, reusable code)
- **Auditable processes** 🔍 (step by step explanations, checkable results)

**💡 Key:** *You've been doing REAL data science all week!*

**💡 Take home message:** The definitions of data science we listed above are just for your reference. Ultimately, YOU define what is data science for yourself!

## 2. Meet Ada: Oda's Inspiration 

### 2.1 Why is Oda called "Oda"? 

Oda the Data Otter is named after **Ada Lovelace** (1815-1852), the world's first computer programmer! Ada wrote the first algorithm intended to be processed by a machine and was the first to envision that computers could do more than just calculate numbers. 

```{image} ../../images/ada.png
:alt: ada
:width: 50%
```

*Image credit: By Antoine Claudet. Shared by Paul Graham on X.com. Public Domain. Source: [Wikimedia Commons](https://commons.wikimedia.org/w/index.php?curid=166285599) {cite}`Claudet1843AdaPortrait`*

**🎈 Activity: Ada's Vision Circle**
- Share what you think computers can do today that Ada might not have imagined
- Discuss: What might computers do in the future that we can't imagine yet?


## 3. Human KNN Game (*Duration: 10 minutes*)

*Just like Oda the Data Otter, we'll start by understanding how neighbors help us make decisions!*

**🎈 Activity: Sticky Note Classification**
- Each student gets a colored sticky note (orange or blue)
- Students spread out randomly across the classroom
- One person walks to a random spot and predicts their "color" based on the K=3 closest students
- Try different K values (1, 5, 7) and see how predictions change!
- Let's start **Moving**!

<img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExbTlrM2U4NmJvODRqZDJ6ZWF4ZWk3Y2J3eHFkajZzMW5wYnUwdGMxMCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/X7jjWeC03QDT2/giphy.gif" alt="snail walking" style="width: 100%; height: auto;">

**💡 Key Discovery:** *The number of neighbors (K) affects our predictions!*

## 4. KNN Machine Learning Magic (*Duration: 45 minutes*)

### 4.1 What is Machine Learning? (*Duration: 10 minutes*)

**💡 What is Machine Learning?**
Think of machine learning like teaching a computer to recognize patterns, just like how you learned to recognize different dog breeds or your friends' handwriting!

**Real-world examples:**
- Netflix suggesting movies you might like
- Email filtering spam messages  
- Photo apps recognizing faces
- Voice assistants understanding speech

**Real-world examples from Sky's research:**

1.  Automatically identify "who is this cow" based on their unique black and white body patterns

```{image} ../../images/cow_cv.png
:alt: cow_cv
:width: 100%
```


2.  Identify sick cows early in time based on behavioural data collected from sensors

```{image} ../../images/cow_ml.png
:alt: cow_ml
:width: 100%
```

**🎈 Discussion**
- How do you think the computer "learned" these patterns?

### 4.2 Training vs Testing: The Golden Rule (*Duration: 10 minutes*)

**💡 What is Training and Testing Data?**
Just like studying for a test, computers need practice data (training) and then get tested on new data they've never seen before!

```{image} ../../images/ml.png
:alt: ml
:width: 100%
```

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


## 5. AI Exploration (*Duration: 75 minutes*)

### 5.1 What is AI? 

1. **🎈 What is AI to you?** 

2. **🎈 What are some examples of AI we use in real life?** 

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3d3JoczFnc2wzbzMwN3JqeXNhM2Nxd3AwdGN4NTU1bHBtdHUza3p3bCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/aDKMe14FKM1TEyjm1l/giphy.gif" alt="robot_learning" style="width: 100%; height: auto;">


### 5.2 Definition from expert

1. Definition from Dr. Joy Buolamiwini {cite}`Buolamwini2023UnmaskingAI`:

> "Artificial Intelligence is the ongoing quest to give computers the ability to perceive the world (that is, make meaning of visual, aural, and other sensory inputs), to make judgments, to generate creative work, and to give them the ability to communicate with humans."

2. Definition from Drs. Stuart Russell and Peter Norvig {cite}`Russell2020AIModernApproach`:

```{image} ../../images/russell.png
:alt: russell
:width: 70%
```

3. More Definitions:

```{image} ../../images/ai.png
:alt: ai
:width: 100%
```

*Image credit: {cite}`Russell2020AIModernApproach`

**💡 Take home message:** The definitions of AI we listed above are just for your reference. Ultimately, YOU define what is AI for yourself!

### 5.3 Programming with AI: Claude Magic (*Duration: 25 minutes*)

#### 🎈 Activity: AI-Powered Coding
Learn how to use Claude (AI assistant) to help write R code and ask questions about what we've learned!

**💡 Practice Questions Based on Our 4-Day Journey:**

**Day 1 Review Questions:**
- "Explain if-else statements in R with a simple example"
- "How do for loops work in R? Give me a fun example with animals"
- "What's the difference between a vector and a dataframe in R?"

**Day 2-3 Review Questions:**
- "Show me how to use %>% (pipe) to clean messy data"
- "What does group_by() and summarize() do in R?"
- "Explain what a histogram tells us about data distribution"

**Day 4 Review Questions:**
- "Can you explain what is bootstrapping to me like I'm a 5-year-old?"
- "Why do we need bootstrapping?"
- "What is the difference between sampling distribution and boostrapping distribution?"

**Day 5 New Concepts:**
- "What's the difference between training and testing data in machine learning?"
- "How does K-Nearest Neighbors work? Use a simple example"

**🤡 Fun & Ridiculous Questions to Try:**
- "Write R code to determine if I should eat pizza based on the weather"
- "How would I use R to plan the perfect magical birthday party?"
- "Write code to predict if my sock will go missing in the laundry"

**🧙‍♀️ Questions with Ambiguous Answers:**
- "What's the best way to visualize data?" (Many correct answers!)
- "How do I know if my machine learning model is good?" (Depends on context!)
- "Should I use mean or median?" (Depends on your data!)

#### 🎯 Prompt Engineering Magic (VERY IMPORTANT!):**

##### 🌟 The Golden Rule: Give Context!
**Always tell the AI what situation you're in!**
- ❌ "Help me with math"
- ✅ "I'm a 7th grader working on fractions homework. Help me understand how to add 1/3 + 1/4"

**Pro tip:** Start a new chat when your conversation gets really long (20+ messages) to keep the AI focused!

---

1. 🧠 **Ask the AI to Think Step by Step**
*Make the AI show its work like in math class!*

**Examples:**
- "Step by step, how do I make a peanut butter sandwich?"
- "Walk me through the process of solving 2x + 5 = 15 step by step"

---

2. ⏰ **Give the AI Time to Think**
*Tell the AI it's okay to take its time - just like you do on tests!*

**Examples:**
- "Take your time and think carefully before answering"
- "Use the maximum amount of thinking. It's better to think too much than too little"
- "Don't rush - I want your best answer"

---

3. 📋 **Use Structured Formats**
*Ask for answers in organized ways!*

**JSON Format Example:**
```
"Give me information about dogs in this JSON format:
{
  'name': 'Golden Retriever',
  'size': 'Large',
  'personality': 'Friendly and energetic',
  'good_with_kids': true
}"
```

**List Format Example:**
- "Give me 5 facts about space as a numbered list"
- "Create a bullet point summary of this article"

---

4. 🎭 **Give the AI a Persona (Role-Play!)**
*Make the AI pretend to be someone specific!*

**Examples:**
- "You are a friendly pirate captain. Teach me about ocean currents!"
- "You are a wise wizard. Explain photosynthesis using magical terms"
- "Pretend you're my cool older sibling. Help me understand why the sky is blue"
- "You are an expert chef. Teach me cooking basics"
- "You are an expert data scientist with 20 years old experience. Help me write a code to do ..."

---

5. 📚 **Provide Clear Examples**
*Show the AI exactly what you want!*

**Example:**
```
"Write animal facts in this format:
🐘 Elephants: These gentle giants can weigh up to 6 tons and have amazing memories!
🦁 Lions: Known as the king of the jungle, they actually live in grasslands!

Now do the same for: dolphins, penguins, and butterflies"
```

---

6. 🔍 **Ask for Explanations**
*Don't just get answers - understand the "why"!*

**Examples:**
- "Don't just tell me the answer - explain why 2+2=4"
- "Explain your reasoning behind this recommendation"
- "Walk me through how you solved this problem"

---

7. 📐 **Request Specific Formats**
*Tell the AI exactly how you want your answer!*

**Examples:**
- "Give me the result as a table"
- "Format this as a poem"
- "Write this as a story with dialogue"
- "Create a recipe format with ingredients and steps"

---

8. 🍳 **Use Fun Analogies**
*Make complex things simple with comparisons!*

**Examples:**
- "Explain how computers work using kitchen analogies"
- "Describe the solar system like it's a neighborhood"
- "Explain DNA using LEGO building blocks"
- "Compare the internet to a giant library"

---

9. 🎨 **Ask for Alternatives**
*Get multiple options to choose from!*

**Examples:**
- "Show me 3 different ways to solve this math problem"
- "Give me 5 creative project ideas about butterflies"
- "What are different ways I could organize my room?"

---

10. 📏 **Set Clear Constraints**
*Give the AI specific rules to follow!*

**Examples:**
- "Explain this using only words a 10-year-old would know"
- "Write a story that's exactly 100 words"
- "Use only materials I can find at home"
- "Solve this without using a calculator"

---

11. 😊 **Be Polite (It Really Helps!)**
*Good manners work with AI too!*

**Examples:**
- "Please explain what stars are made of"
- "Could you help me understand fractions?"
- "Thank you! Could you give me one more example?"

---

12. 🎯 **Be Super Specific**
*The more details you give, the better the answer!*

**Examples:**
- ❌ "Help with science"
- ✅ "I'm studying the water cycle for 6th grade science. Can you explain evaporation in simple terms?"

- ❌ "Write a story"
- ✅ "Write a 200-word adventure story about a kid who discovers a secret door in their school library"

---

13. 🔄 **Ask for Improvements**
*Make your answers even better!*

**Examples:**
- "Can you make this explanation simpler?"
- "Add more examples to help me understand"
- "Can you make this more fun and exciting?"

---

14. 🎲 **Use "What If" Questions**
*Explore different possibilities!*

**Examples:**
- "What if gravity was half as strong on Earth?"
- "What if dinosaurs never went extinct?"
- "What if we could breathe underwater?"

---

15. 🏗️ **Build on Previous Answers**
*Keep the conversation going!*

**Examples:**
- "That's great! Now can you give me a harder example?"
- "I understand that part. What about...?"
- "Can you connect this to what we talked about earlier?"

---

##### 🚀 **Pro Tips for Success:**

✨ **The Magic Formula:**

Context + Clear Request + Specific Format + Politeness = Amazing Results!

#####  🔥 **Advanced Techniques:**
- **Chain of Thought:** "Let me think through this step by step..."
- **Multiple Perspectives:** "Show me this from a student's view and a teacher's view"
- **Error Checking:** "Check this answer and tell me if anything seems wrong"

##### 🎪 **Make It Fun:**
- Turn learning into games: "Quiz me on this topic!"
- Create characters: "Explain this as if you're a talking robot from the future"
- Use storytelling: "Tell me about photosynthesis through the adventure of a water molecule"

---

##### 🎯 **Remember:**
- **Start fresh:** New chat for new big topics
- **Be patient:** Good prompts take practice
- **Experiment:** Try different approaches
- **Have fun:** The best learning happens when you're enjoying yourself!

*Happy prompting, future AI wizards! 🧙‍♂️✨*

---

**✨ Challenge:** Use these prompt engineering techniques to get Claude to help you create a data story combining everything we've learned this week!

### 5.4 🔍 How to Check if AI is Giving You the Right Code

*Because even AI makes mistakes sometimes! Here's how to be a code detective 🕵️‍♂️*

🎯 **Why Check AI Code?**
Just like you double-check your math homework, you should double-check AI code! Even smart AI can make tiny mistakes or misunderstand what you wanted.

---

#### 5.4.1. 🤖 **Ask Two Different AI Models**
*Get a second opinion, just like asking two teachers!*

**How to do it:**
- Ask ChatGPT: "Create R code to make a bar chart of favorite ice cream flavors"
- Ask Claude: "Create R code to make a bar chart of favorite ice cream flavors"  
- Compare the answers - are they similar? Do they both make sense?

**Example Questions to Try:**
```r
"Write R code to create a histogram of student ages"
"Write R code using ggplot2 to make a scatter plot of height vs weight"
"Write R code using dplyr to find all students taller than 60 inches"
```

---

#### 5.4.2. 🧪 **Create Test Data to Check Your Code**
*Make fake data to see if your code actually works!*

**Step 1: Ask AI to create simple test data**
```r
"Create a simple data frame in R with 5 students, their names, 
ages (between 10-15), and favorite colors. Call it 'test_data'"
```

**Step 2: Test your code with this data**

**Example:**
Let's say you asked AI to write code that finds all students older than 12:

```r
# AI might give you this code:
older_students <- test_data %>% 
  filter(age > 12)

# Check: Look at test_data and count how many students 
# are actually older than 12. Does your result match?
```

**Fun Test Examples to Try:**
1. **Testing a histogram:**
   ```r
   "Create test data with 10 people and their heights, 
   then write code to make a histogram"
   ```

2. **Testing a filter:**
   ```r
   "Create test data with 8 animals and their weights, 
   then filter for animals heavier than 50 pounds"
   ```

3. **Testing a summary:**
   ```r
   "Create test data with 6 students and their test scores, 
   then calculate the average score"
   ```

---

#### 5.4.3. 🎭 **Team Up Two AI Models**
*Have one AI write code, another AI check it!*

**The Process:**
1. **AI #1 (The Coder):** "Write R code to create a pie chart of favorite pizza toppings using ggplot2"

2. **AI #2 (The Checker):** "Look at this R code and tell me if it will work correctly. Also explain what each line does:
   ```r
   [paste the code from AI #1]
   ```"

**What to look for in the checker's response:**
- Does it explain each line clearly?
- Does it mention any potential problems?
- Does it suggest improvements?

---

#### 5.4.4. 🔬 **Simple Code Testing Tricks**

##### **Method 1: The "Does it Run?" Test**
Copy the code into R and see if it runs without errors!

##### **Method 2: The "Does it Make Sense?" Test**
Ask yourself:
- If I have 5 red apples and 3 green apples, should my bar chart show 2 bars?
- If I'm filtering for ages > 10, should a 9-year-old appear in my results?

##### **Method 3: The "Explain It Back" Test**
Ask the AI: "Explain what this code does line by line"

---

#### 5.4.5 🎯 **Easy Practice Examples for Kids**

##### **Example 1: Testing a Simple Bar Chart**
```r
# Ask AI: "Create R code to make a bar chart of pet types: 
# 3 dogs, 2 cats, 1 hamster"

# Then create test data and check:
pets <- data.frame(
  type = c("dog", "dog", "dog", "cat", "cat", "hamster"),
  count = c(1, 1, 1, 1, 1, 1)
)

# Does your chart show 3 bars with the right heights?
```

##### **Example 2: Testing a Filter**
```r
# Ask AI: "Write code to find all movies longer than 2 hours"

# Test with simple data:
movies <- data.frame(
  title = c("Short Movie", "Long Movie", "Medium Movie"),
  length = c(90, 150, 120)  # in minutes
)

# Should only return "Long Movie" (150 minutes = 2.5 hours)
```

##### **Example 3: Testing a Loop**
```r
# Ask AI: "Write a for loop that prints numbers 1 to 5"

# Easy check: Run it and count - do you see exactly 5 numbers?
```

---

#### 5.4.6 🏆 **Become a Code Detective - Checklist**

Before trusting AI code, ask yourself:

- [ ] **Did I test it with simple data?**
- [ ] **Does the output make logical sense?**
- [ ] **Can I explain what each part does?**
- [ ] **Does it actually answer my original question?**

---

#### 5.4.7 🌟 **Remember: You're the Boss!**

- **AI is your helper, not your boss** - always check its work!
- **It's okay if code has mistakes** - that's how we learn!
- **When in doubt, ask questions** - "What does this line do?"
- **Trust but verify** - like a good scientist! 🔬

*Keep being awesome code detectives! 🕵️‍♀️✨*

### 5.5 AI Model Battle Arena 

#### 🎈 Activity: How Do AI Experts Evaluate Models?

**💡 What is Chatbot Arena?**
Real AI researchers use a system called "Chatbot Arena" where people compare different AI models to see which one performs better. Today, you become AI evaluation experts!

**🔬 How Do We Know Which AI Model is Best?**
Just like how we tested our KNN models, we need to test AI chatbots! But instead of accuracy scores, we use human judgment.

**🏟️ Your Mission: Compare AI Models**

**Part 1: Text Generation (LLM) Battle**
Ask the SAME question to different AI models and compare their answers:

**📝 Test Questions:**
1. **R Programming Help:** "Explain how to make a scatter plot in R for beginners"
2. **Creative Storytelling:** "Write a short story about an otter who discovers magic of data science"
3. **Math Problem:** "If I have 100 candy pieces and want to share equally among 7 friends, how should I do it?"
4. **Ethics Question:** "Should robots be allowed to make decisions about hiring people for jobs?"

**Part 2: Image Generation (T2I) Battle**
Compare different text-to-image AI models

**🖼️ Test Prompts:**
1. **Simple Object:** "A red apple on a wooden table"
2. **Complex Scene:** "Otters learning data science in a magical classroom with floating charts"
3. **Diverse People:** "A surgeon."
4. **Abstract Concept:** "What does 'happiness' look like as a color and shape?"

#### 🕵️ Secret Evaluation Mission
Each student choose your own secret evaluation criteria:
- 🎨 **Creativity Judge:** Which response is most creative and imaginative?
- 📖 **Accuracy Judge:** Which response is most factually correct?
- 🤓 **Clarity Judge:** Which response is easiest to understand?
- 😊 **Helpfulness Judge:** Which response is most useful for solving the problem?
- 🌈 **Diversity Judge:** Which response represents people most inclusively?
- 🔍 **Honesty Judge:** Which response admits when it doesn't know something?

**📊 Recording Your Results:**
For each test, secretly record which models you end up selecting in each pairwise model comparisons.

#### 🏆 The Grand Analysis

**🎈 Class Discussion Questions:**
- Which AI model won overall when we combine everyone's response?
- Did different models excel at different types of tasks?
- What surprised you about the AI responses?
- Did you notice any biases in the AI outputs?
- Which model would YOU choose as the best? Why?

**🤔 Deeper Thinking:**
- How do these results compare to what the "experts" say online?
- What if we tested with different types of questions?
- How might our age/background affect which AI we prefer?

**💡 Key Learning:**
Just like in data science, evaluation depends on what you're measuring and who's doing the judging!

**✨ Challenge:** Design your own test question that you think will really challenge the AI models. What makes a question "hard" for AI to answer?

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3cnVnOGQ4bXFwcjdmMGhjeGIzcjI3ZGwyano2bTN6NzZnYW4zdGV0ciZlcD12MV9naWZzX3NlYXJjaCZjdD1n/GiNyo8KD5j9mM/giphy.gif" alt="minion_yeah" style="width: 100%; height: auto;">

## 6. Introduction to AI Ethics 

> "AI reflects both the aspirations and the limitations of its makers." {cite}`Buolamwini2023UnmaskingAI`

### 6.1 How does generative AI learn?

ChatGPT belongs to a family called **generative AI**. These are AI models that can create new text, images, and other content based on what we ask them to do.

**✨ Question:** How do you think ChatGPT learned to write so well? Where does its training data come from?

```{image} ../../images/training_genAI.png  
:alt: training_genAI
:width: 100%
```

**💡 What is training data?**
Think of training data like all the books, websites, and social media posts that AI reads to learn how to write. AI companies automatically collect (or "scrape") millions of texts from the internet - including posts from Twitter, Instagram, Reddit, and countless websites.

**🤔 The problem:** People online have very different beliefs and opinions. Some people believe the Earth is flat, others think WiFi causes cancer. Some people have unfair biases - like thinking people with lighter skin are smarter, or that men are naturally better at math than women. We know these beliefs are wrong, but they're still part of the internet.

**⚠️ Here's what happens:** Since AI learns from what humans wrote online, it can pick up these wrong ideas and biases too. The AI doesn't know which information is true or false - it just learns patterns from everything it reads.

```{image} ../../images/training_genAI2.png  
:alt: training_genAI2
:width: 100%
```

**🎮 Think of it like this:** Imagine you've read every book in the Vancouver library, plus millions of websites and scientific papers. Now someone plays a fill-in-the-blank game with you: "Chickens lay..." (eggs!), "The capital of France is..." (Paris!). Because you've read so much, you know which words usually go together. That's similar to how ChatGPT works - it predicts what word should come next based on patterns it learned from reading massive amounts of text.

**🚨 Example of the problem:** If an AI that creates images learned from lots of fake pictures showing cats being born from green-blue egg shells and using their whiskers like solar panels, what do you think it would create if someone asked for a picture of a newborn cat?

```{image} ../../images/fake_content2.png  
:alt: fake_content2
:width: 100%
```

### 6.2 🎈 Activity: Ethics Discussion Circle

**Big Questions:**
- Is AI objective or does it reflect human bias?
- Who decides which data are filtered out, which data are kept in for training AI?

- Whose values are being encoded in AI systems?

> "The voice of everyday people with lived experiences of what it means to be excluded -- indeed, excoded -- from systems not designed with you in mind." {cite}`Buolamwini2023UnmaskingAI`

- Whose perspectives are erased or ignored during AI development
- How can we make AI more fair and inclusive?

> "We need to recognize that not building a tool or not collecting intrusive data is an option,and that should be the first consideration." {cite}`Buolamwini2023UnmaskingAI`

### 6.3 Real-world examples:

### 6.3.1 Facial recognition AI system (computer vision model) can not recognize people with darker skin tones

**🤖 What happened?** Scientists discovered that many facial recognition systems work much better on people with lighter skin than people with darker skin. These AI systems are used in phones, security cameras, and even by police.

**🤔 Why did this happen?** The training data used to teach these AI systems had mostly photos of people with lighter skin. Since the AI didn't see enough examples of people with darker skin, it became really bad at recognizing them.

**😢 Real consequences:** This means some people can't unlock their phones with their face, or worse - innocent people might be wrongly identified as criminals by police facial recognition systems.

> "The *coded gze* describes the ways in which the priorities, preferences, and prejudices of those who have the power to shape technolgy can propagate harm, such as discrimination and erasure. We can encode prejudice into technology even if it is not intentional" {cite}`Buolamwini2023UnmaskingAI`

```{image} ../../images/unmasking_ai.png  
:alt: unmasking_ai
:width: 100%
```

### 6.3.2. AI hiring tools showing gender bias

**💼 What happened?** Amazon created an AI system to help them hire the best employees by automatically reviewing job applications. But there was a big problem - the AI was biased against women!

**🤔 Why did this happen?** The AI learned from Amazon's past hiring data, which showed that most of their tech employees were men. So the AI thought "men = good employees" and started giving lower scores to any resume that mentioned women's activities (like "women's chess club captain") or women's colleges.

**😠 Real consequences:** This meant qualified women were getting rejected not because they weren't good enough, but because the AI had learned unfair patterns from the past. Amazon had to stop using this system.

**💭 The bigger problem:** Many companies still use AI for hiring, and people often trust these systems more than human decisions, thinking they're "fair and objective" when they're not.

> "We swap fallible human gatekeepers for machines that are also flawed but assumed to be objective. And when machines fail, the people who often have the least resources and most limited access to power structures are those who have to experience the worst outcomes." {cite}`Buolamwini2023UnmaskingAI`

```{image} ../../images/amazon.png  
:alt: amazon
:width: 100%
```

### 6.3.3. Who reviews and removes the toxic contents that are unsafe for AI to learn?

**🧹 What happens behind the scenes?** Before AI systems like ChatGPT are trained, real humans have to look through millions of pieces of content from the internet to remove harmful material - like hate speech, violence, or disturbing images.

**👷 Who does this work?** Often, this difficult job is given to workers in other countries who are paid very little. They spend 8 hours a day looking at some of the worst content on the internet to "clean" the data for AI training.

**💔 What are the consequences?** Imagine having to look at horrible, disturbing content all day, every day. These workers often develop mental health problems, anxiety, and depression from constantly seeing such negative material.

**🤔 The bigger questions:** 
- What are the consequences of reviewing toxic contents all day long?
- Is it fair to ask people to do this harmful work so that others can have "clean" AI?
- Should we be building these AI systems in the first place if they require people to suffer?

> "Do we need this AI system or this data in the first place, or does it allow us to direct money at inadequate technical Band-Aids without addressing much larger systemic societal issues?" {cite}`Buolamwini2023UnmaskingAI`

> "AI will not solve poverty, because the conditions that lead to societies that pursue profit over people are not technical."  {cite}`Buolamwini2023UnmaskingAI`

```{image} ../../images/toxic_content.png  
:alt: toxic
:width: 100%
```

### 6.3.4. What do surgeons look like to AI (text-to-image generative AI)? 

A comprehensive study by Ali et al. {cite}`Ali2023FaceSurgeon` investigated demographic representation in AI-generated images of surgeons across three leading text-to-image generators. The researchers analyzed how these AI systems portray surgeons in terms of race, gender, and other demographic characteristics.

The study found significant biases in AI representations, with surgeons predominantly depicted as white and male across all platforms tested. This research highlights how AI systems may reinforce existing stereotypes about medical professionals and the importance of addressing these biases in training data and algorithms.

```{image} ../../images/surgeon.png  
:alt: surgeon
:width: 100%
```

**Real world statistics:** Roughly 1 in 4 general surgeons in North America is a woman today, and the number is rising every year. Asian, black, Hispanic and other minotiries make up about 22% of surgeons in the U.S. Also, surgeons would not look like this in other parts of the world like Asia.

### 6.3.5. **Prompt revision** with good intention

we are at a time in history where we have the opportunity to make things right using AI. To solve the problem and represent human in a more diverse way, OpenAI created something called prompt revision.

When users ask DALL-E 3, their image generation model, DALL-E 3 first asks GPT-4, a language model, to use its imagination to add more details to this prompt, before actually creating an image. When a user asks for a surgeon, DALL-E 3 asks GPT-4 to imagine what a surgeon looks like while encouraging it to describe human in diverse race and skin-tones. So GPT-4 will rewrite the user prompt to be, a middle-aged female surgeon with light brown skin, or an African-American surgeon standing confidently. 

For human representation, prompt revision went from only showing white men to be more diverse and inclusive. 

```{image} ../../images/prompt_revision.png  
:alt: prompt_revision
:width: 100%
```

### 6.3.6. **Prompt revision** could erase reality

**💡 What happens when AI tries to make things "prettier"?**

Sometimes AI tries to make images look nicer by changing them from reality! Here's a real example from Sky's own AI bias research {cite}`Sheng2025LivestockAI`:

🐄 **The Dairy Farm Example:**
- When people ask AI to draw "dairy cows," it automatically does **prompt revision** to add in the details of sunshine, lush green pasture to show happy cows on green grass fields
- But in real life, most dairy cows live only indoors in small spaces, on concrete floors, and don't get to run around outside or access pasture
- The AI makes farming look more like a fairy tale than real life!
- Base model of DALL-E 3 without **prompt revision** mostly depict dairy farms closer to reality
-  **Prompt revision** erased the reality of livestock farming

```{image} ../../images/sheng_2025.png  
:alt: sheng_2025
:width: 100%
```

**🤔 Why does this happen?**
- AI wants to show "pretty" pictures that people will like
- But sometimes the pretty version isn't the true version
- This can make people think the world is different than it really is

**💡 Key Learning:**
AI doesn't always show reality - it might show what it thinks we want to see instead of what's actually true!

## 6.4 What happens when AI trains on AI-made content?

### 6.4.1 The Problem: AI Getting Confused About Reality

**💡 What if AI only learned from other AI?**

Think of it like a game of telephone - when people whisper messages from person to person, the message gets more and more wrong! The same thing happens when AI learns from other AI instead of real human content.

#### 🐦 Do You Know What Real Baby Peacocks Look Like?

```{image} ../../images/bird1.png  
:alt: bird1
:width: 100%
```

When you search for "baby peacocks" online, you might see lots of super cute, fluffy pictures. But many of these are actually made by AI! The AI makes baby peacocks look like adorable little cotton balls, which is very different from how they really look.

#### 🐣 Real Baby Peacocks (Called Peachicks!)

Real baby peacocks look quite different - they're brown and not as fluffy as AI pictures show! 

```{image} ../../images/real.png  
:alt: real
:width: 100%
```
Image credit: a-z-animals.com

#### 🔄 The "Model Collapse" Problem

**What is Model Collapse?** {cite}`Shumailov2024ModelCollapse`
 “Model collapse” describes how the performance of generative models degrades over generations of training, with the outputs gradually converging to represent only dominant groups, and ultimately losing representation of minority groups. 

 When AI learns from other AI instead of real human content, it starts to "forget" what the real world looks like! This is called "model collapse."

Here's how it works:
1. **First AI:** Learns from real human content (pretty good!)
2. **Second AI:** Learns from first AI's content (a little worse)
3. **Third AI:** Learns from second AI's content (even worse!)
4. **Keep going...** What would the world look like for AI in the long run??

```{image} ../../images/model_collapse.png  
:alt: model_collapse
:width: 100%
```

**💡 Key Learning:**
Just like in the telephone game, when AI learns from AI instead of humans, the information gets more and more wrong over time! That's why it's important for AI to keep learning from real human content.

## 7. Optional: Advanced AI Tools Demo (*Duration: 15 minutes - if time allows*)

### 7.1 Cursor IDE: AI-Powered Programming

**💡 What is Cursor IDE?**
[Cursor](https://cursor.com/agents) is an advanced code editor where AI agents helps you write code in real-time! It's like having a super-smart coding partner sitting next to you.

**🎈 Activity: Watch the Magic**
- See how AI can complete your code as you type
- Watch AI understand your entire project context
- See how it can fix bugs and suggest improvements

**🧙‍♀️ The Power of System Prompts**

**💡 What is a System Prompt?**
A system prompt is like giving the AI a "personality" or "role" before it starts helping you. It's like telling someone "You are now a cooking teacher" before asking cooking questions!

**🎭 Demo: How System Prompts Change Everything**

**Scenario 1: Default AI**
```
User: "How do I make a plot in R?"
```

**Scenario 2: With System Prompt - "You are a patient teacher explaining to 12-year-olds"**
```
User: "How do I make a plot in R?"
```

**Scenario 3: With System Prompt - "You are a professional data scientist reviewing code"**
```
User: "How do I make a plot in R?"
```

**🤯 Mind-Blowing Demo Examples:**
- AI reads your entire project and suggests improvements
- AI explains complex code in your own words
- AI can refactor (improve) your code while keeping it working
- AI helps debug errors by understanding your specific context

**🎈 Discussion Questions:**
- How might this change the way people learn programming?
- What skills will be most important for future programmers?
- Should students learn to code without AI first, or with AI from the beginning?

#### 🪄 Fun Cursor Project Ideas to Demo

**💡 These are quick projects perfect for showcasing Cursor's magic!**

**🎯 Project 1: Magical Creature Generator Website**
- **System Prompt:** "You are a helpful web developer who explains code clearly to middle school students. Use fun comments and simple explanations."
- **User Prompt:** "Create a colorful webpage that generates random magical creatures with names, powers, and descriptions. Include a button to generate new creatures and make it look magical with CSS! Create a new GitHub repository to host the code, and use GitHub pages to launch the website."

**🎮 Project 2: Retro Snake Game**
- **System Prompt:** "You are a fun game developer who loves creating simple, engaging games for kids. Explain your code with comments that make it easy to understand."
- **User Prompt:** "Create a colorful Snake game that runs in the browser! Make the snake grow when it eats food, keep score, and add fun sound effects. Use arrow keys to control the snake. Make it look retro and cool with neon colors! Include a game over screen with the final score and a restart button. Host it on my GitHub repository, GitHub Pages so I can share it with friends!"

**🏰 Project 3: Choose Your Own Adventure Story**
- **System Prompt:** "You are a storytelling expert who creates engaging interactive stories for middle schoolers. Make stories that are exciting but appropriate for all ages."
- **User Prompt:** "Create an interactive 'Choose Your Own Adventure' website! Start with a story about exploring a mysterious castle. At each story section, give users 2-3 choices that lead to different paths. Include fun illustrations using CSS art or emoji. Add different endings based on the choices they make. Make it feel like playing a text-based RPG game with inventory, character stats, and multiple storylines! Create a new GitHub repository to host the code, and use GitHub pages to launch the website."

**🎮 Demo Tips:**
- Start with a simple prompt and watch Cursor build the entire project
- Show how Cursor understands context from previous messages
- Demonstrate real-time code completion
- Let Cursor explain the code it writes
- Show how it can debug and improve the code

### 7.2 Perplexity: AI-Powered Research Assistant

**💡 What is Perplexity?**
[Perplexity](https://www.perplexity.ai/) is like a super-smart search engine that reads the internet and gives you answers with sources, perfect for research!

**🔍 How is Perplexity Different from Google?**
- **Google:** Shows you links to websites
- **Perplexity:** Reads those websites and summarizes the answer for you
- **Bonus:** Tells you exactly which sources it used!

**🎈 Activity: Research Challenge** (*if time allows*)
Try asking Perplexity some research questions:

**🧪 Science Questions:**
- "What causes rainbows and how do they form?"
- "Why do cats purr and what does it mean?"

**📊 Data Science Questions:**
- "What are the newest trends in AI for 2025?"
- "How do companies use AI to recommend products?"

**🌍 Current Events:**
- "What are the latest developments in AI safety?"
- "How are schools using AI tools to help students learn?"

**💡 Key Learning:**
Notice how Perplexity shows you its sources! This is super important for checking if information is reliable.

**🤔 Discussion:**
- How do you know if an AI research tool is giving you good information?
- Why is it important to check the sources?
- When should you use Perplexity vs. Google vs. asking a human expert?

### 7.3 NotebookLM: AI-Powered Research and Learning Assistant

**💡 What is NotebookLM?**
[NotebookLM](https://notebooklm.google.com/) is Google's AI-powered research assistant that can read your documents, notes, and sources to create summaries, answer questions, and even generate study guides!

**🎈 Amazing Features Demo:**
- **Document Chat:** Ask questions about specific documents (PDFs, text files, websites, and more) you've uploaded
- **Source Synthesis:** Knows all your sources and can connect ideas across them. Combines information from multiple sources
- **Study Guide Creation:** Automatically creates organized notes and summaries
- **Audio Overviews:** Generates engaging podcast conversations about your content!

**🧪 Cool Use Cases for Students:**
- Upload your class notes and ask questions to study for tests
- Combine research from multiple websites into one summary
- Create study guides from textbook chapters
- Generate audio summaries to listen to while walking or exercising

**🎯 Fun Demo:**
- Upload our camp materials and ask NotebookLM to create a study guide
- Demonstrate the audio overview feature with our camp content

**💡 Key Learning:**
NotebookLM helps you understand and organize information better by connecting ideas across multiple sources - perfect for research projects and studying!

## 8. Camp Celebration & Survey (*Duration: 10 minutes*)

### 8.1 Survey & Feedback
Complete the camp evaluation survey below to help us make future camps even more magical!

https://forms.gle/A16YUH3qzKtnAJFq8

<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3cGlubDAwZnl1ZmFtZTYyNm9wc3VrNnQzYW1zOGRsbW9iYnRpY2VwYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/FyH83LEK2hytq/giphy.gif" alt="friday" style="width: 100%; height: auto;">

## 9. 📋 Pro Tips Cheatsheet

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

## 10. 🆘 Troubleshooting Cheatsheet

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