# 🔮 Day 5 - Spell 3: Claude Coding Assistant
# Learn to use AI to help write better R code!

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

# Load our magical libraries
library(tidyverse)
library(ggplot2)

########################################################
# PART 1: Learning to Ask Claude for Help
########################################################

# 💡 What is Claude?
# Claude is an AI assistant that can help you write code, debug problems,
# and explain concepts. Think of it as your coding buddy!

# 🎈 How to Ask Good Questions:
# 1. Be specific about what you want
# 2. Include examples of your data structure
# 3. Ask for explanations, not just code
# 4. Always test the code yourself!

# Let's practice with some examples:

########################################################
# Example 1: Getting Help with Data Visualization
########################################################

# Load some sample data to work with
# We'll use the built-in mtcars dataset
data("mtcars")
head(mtcars)

# 🎈 Activity: Practice Asking Claude
# Copy this prompt to Claude (or another AI assistant):

prompt_1 <- "
I have a dataset called mtcars with these columns:
mpg, cyl, disp, hp, wt, qsec, vs, am, gear, carb

I want to create a scatter plot showing the relationship between:
- X-axis: car weight (wt)
- Y-axis: miles per gallon (mpg)
- Color points by number of cylinders (cyl)

Please write R code using ggplot2 and explain what each part does.
"

# Your turn: Ask Claude this question and paste the response below!
# Then test the code:

# PASTE CLAUDE'S CODE HERE:
# (You'll fill this in during the activity)

########################################################
# Example 2: Getting Help with Data Manipulation
########################################################

# Let's say we want to group and summarize data
# Here's another good prompt for Claude:

prompt_2 <- "
Using the mtcars dataset in R, I want to:
1. Group cars by number of cylinders (cyl)
2. Calculate the average mpg and average horsepower (hp) for each group
3. Sort the results by average mpg from highest to lowest

Please write R code using dplyr functions and explain each step.
"

# Your turn: Ask Claude this question and test the result!

# PASTE CLAUDE'S CODE HERE:

########################################################
# PART 2: Using Claude to Debug Code
########################################################

# Sometimes our code has errors. Claude can help fix them!
# Here's some broken code:

broken_code <- '
library(ggplot2)
library(dplyr)

mtcars %>%
  group_by(cyl) %>%
  summarise(avg_mpg = mean(mpg),
            avg_hp = mean(hp)) %>%
  ggplot(aes(x = avg_mpg, y = avg_hp, color = cyl)) +
  geom_point(size = 3) +
  labs(title = "Average MPG vs HP by Cylinders",
       x = "Average MPG",
       y = "Average HP",
       color = "Cylinders")
'

# Try running this code - what error do you get?
# (Don't actually run it, just read it carefully)

# 🎈 Activity: Debug with Claude
# Ask Claude to help you fix this code with a prompt like:

debug_prompt <- "
I have this R code that's giving me an error:

[paste the broken code here]

The error message says: [paste error message here]

Can you help me fix this code and explain what was wrong?
"

# Your turn: Ask Claude to debug this code!

# PASTE CLAUDE'S FIXED CODE HERE:

########################################################
# PART 3: Creative Visualization Challenge
########################################################

# Now let's use Claude to create something totally new!

# 🎈 Activity: Create a New Visualization Type
# Ask Claude to help you create a visualization you've never made before

creative_prompt <- "
Using the mtcars dataset in R, I want to create an interesting and beautiful visualization that I've never seen before. 

Some ideas:
- A combination of multiple plot types
- Creative use of colors and themes
- Interactive elements if possible
- Something that tells a story about cars

Please suggest a creative visualization and provide the R code to make it, with explanations of what makes it special.
"

# Your turn: Ask Claude for a creative visualization!

# PASTE CLAUDE'S CREATIVE CODE HERE:

########################################################
# PART 4: Learning New Functions
########################################################

# Claude can teach you about R functions you don't know yet!

learning_prompt <- "
I'm learning R and want to understand these functions better:
- map() from purrr package
- case_when() from dplyr
- facet_wrap() in ggplot2

Can you show me simple examples of each function using the mtcars dataset and explain when I would use them?
"

# Your turn: Ask Claude to teach you new functions!

# PASTE CLAUDE'S EXAMPLES HERE:

########################################################
# PART 5: Building a Complete Analysis
########################################################

# Let's ask Claude to help us build a complete data analysis

analysis_prompt <- "
I want to create a complete data analysis of the mtcars dataset that includes:

1. Data exploration (summary statistics, data types)
2. At least 2 interesting visualizations
3. Some insights about what the data tells us about cars
4. Clean, well-commented code

Please write a comprehensive analysis in R with explanations.
"

# Your turn: Ask Claude for a complete analysis!

# PASTE CLAUDE'S ANALYSIS HERE:

########################################################
# 🎈 Your Turn: Free Exploration!
########################################################

# Now it's time to explore on your own!
# Think of something you want to analyze or visualize and ask Claude to help

# Some ideas:
# - Analyze a different built-in R dataset (iris, diamonds, faithful)
# - Create a specific type of plot you're curious about
# - Learn about a statistical concept
# - Build an interactive visualization
# - Create a function to automate something

# Write your own prompt:
my_prompt <- "
[Write your own creative prompt for Claude here!]
"

# Ask Claude your question and experiment with the results!

# YOUR CLAUDE EXPLORATION:

########################################################
# ✨ Best Practices for AI-Assisted Coding
########################################################

# 💡 Remember these key principles:

# 1. ALWAYS TEST THE CODE
#    - Just because Claude wrote it doesn't mean it's perfect
#    - Run small pieces first to understand what they do

# 2. ASK FOR EXPLANATIONS
#    - Don't just copy code, understand it
#    - Ask "Can you explain how this works?"

# 3. BE SPECIFIC
#    - Vague questions get vague answers
#    - Include your data structure and exact requirements

# 4. ITERATE AND IMPROVE
#    - If the first answer isn't perfect, ask follow-up questions
#    - "Can you modify this to..." or "What if I wanted to..."

# 5. LEARN FROM THE PATTERNS
#    - Notice common R patterns in Claude's code
#    - Build your understanding of best practices

# 6. VERIFY STATISTICAL CLAIMS
#    - If Claude makes statistical statements, double-check them
#    - AI can sometimes make confident-sounding mistakes

########################################################
# 🎈 Reflection Questions
########################################################

# After completing this activity, think about:

# 1. What surprised you most about using AI for coding?

# 2. When was Claude most helpful? When was it less helpful?

# 3. How do you think AI assistants will change programming?

# 4. What skills do you think are still important for programmers to learn themselves?

# Write your thoughts here:
# 
# My reflection:
# 
# 

# 💡 Key Learning Points:
# - AI assistants are powerful tools for learning and coding
# - They work best when you ask specific, detailed questions
# - Always verify and understand AI-generated code
# - AI is a learning partner, not a replacement for understanding
# - The more you know about coding, the better you can use AI assistants!