# 🔮 Day 5 - Spell 4: Chatbot Arena Experiment
# Conduct your own AI model comparison study!

# Load our magical libraries
library(tidyverse)
library(ggplot2)

########################################################
# PART 1: Understanding the Chatbot Arena
########################################################

# 💡 What is Chatbot Arena?
# It's a platform where people compare different AI models by asking the same
# question to multiple AIs and seeing which answer they prefer.

# Today, YOU become the researchers studying AI model preferences!

# 🎈 The Secret Mission:
# Each student will get a SECRET evaluation criteria.
# You'll use this criteria to evaluate AI responses, but don't tell others
# what your criteria is until the end!

########################################################
# PART 2: Your Secret Evaluation Criteria
########################################################

# Each student gets ONE of these criteria (instructor will assign):

evaluation_criteria <- c(
  "Most Creative Response",
  "Most Realistic/Factual Answer", 
  "Most Technical Accuracy",
  "Most Helpful Tone",
  "Most Detailed Explanation",
  "Most Beginner-Friendly",
  "Most Entertaining",
  "Most Professional"
)

# Write your assigned criteria here:
my_secret_criteria <- "________________"

# Keep this secret until the end of the experiment!

########################################################
# PART 3: The Test Questions
########################################################

# We'll test different AI models on these questions:

test_questions <- c(
  "Explain what machine learning is to a 10-year-old",
  "Write a simple R code to create a bar chart",
  "What are the ethical concerns with AI?",
  "How do you choose the best K value in KNN?",
  "Describe the difference between correlation and causation"
)

# You'll ask these questions to different AI models and evaluate based on
# your secret criteria!

########################################################
# PART 4: Collecting Data (Manual Entry)
########################################################

# During the activity, you'll collect responses from different AI models
# We'll simulate this by having you manually enter the data

# Create a data frame to store results
# Each row represents one student's evaluation of one question-model pair

# Initialize empty data frame
arena_results <- tibble(
  student_id = character(),
  question_id = integer(),
  question_text = character(),
  model_name = character(),
  rating = integer(),  # 1-5 scale
  secret_criteria = character(),
  notes = character()
)

# 🎈 Activity Instructions:
# 1. Get assigned a secret criteria
# 2. For each test question, compare responses from 2-3 AI models
# 3. Rate each response 1-5 based on YOUR secret criteria
# 4. Record your ratings in the data frame below

# Example of how to add your data:
# (Replace this with real data during the activity)

sample_data <- tibble(
  student_id = rep("student_01", 6),
  question_id = rep(1:3, each = 2),
  question_text = rep(c("ML explanation", "R code", "AI ethics"), each = 2),
  model_name = rep(c("Claude", "ChatGPT"), 3),
  rating = c(5, 3, 4, 4, 3, 5),  # Example ratings
  secret_criteria = rep("Most Creative Response", 6),
  notes = c("Very creative analogies", "Too technical", 
           "Good examples", "Standard response",
           "Unique perspective", "Very comprehensive")
)

# Add your data here during the activity:
arena_results <- bind_rows(arena_results, sample_data)

########################################################
# PART 5: Class Data Collection
########################################################

# The instructor will collect data from all students
# For now, we'll simulate what the combined class data might look like

# This function simulates collecting data from multiple students
simulate_class_data <- function() {
  students <- paste0("student_", sprintf("%02d", 1:20))
  questions <- 1:5
  models <- c("Claude", "ChatGPT", "Gemini")
  criteria_list <- evaluation_criteria
  
  # Generate simulated data
  class_data <- expand_grid(
    student_id = students,
    question_id = questions,
    model_name = models
  ) %>%
    mutate(
      question_text = case_when(
        question_id == 1 ~ "ML explanation",
        question_id == 2 ~ "R code example", 
        question_id == 3 ~ "AI ethics",
        question_id == 4 ~ "KNN K selection",
        question_id == 5 ~ "Correlation vs causation"
      ),
      # Assign criteria (simulate instructor assignment)
      secret_criteria = rep(criteria_list, length.out = n()),
      # Simulate ratings with some bias patterns
      rating = case_when(
        secret_criteria == "Most Creative Response" & model_name == "Claude" ~ 
          sample(4:5, n(), replace = TRUE, prob = c(0.3, 0.7)),
        secret_criteria == "Most Technical Accuracy" & model_name == "Gemini" ~ 
          sample(4:5, n(), replace = TRUE, prob = c(0.4, 0.6)),
        secret_criteria == "Most Helpful Tone" & model_name == "ChatGPT" ~ 
          sample(4:5, n(), replace = TRUE, prob = c(0.5, 0.5)),
        TRUE ~ sample(1:5, n(), replace = TRUE, prob = c(0.1, 0.2, 0.3, 0.3, 0.1))
      ),
      notes = "Simulated response"
    )
  
  return(class_data)
}

# Generate simulated class data for analysis
class_arena_data <- simulate_class_data()

########################################################
# PART 6: Analyzing the Results
########################################################

# Now let's analyze what we found!

# 🎈 Activity: Load the Real Class Data
# (Replace this with actual data collection during the workshop)
# class_arena_data <- read_csv("class_arena_results.csv")

# Basic summary statistics
print("Overall ratings by model:")
model_summary <- class_arena_data %>%
  group_by(model_name) %>%
  summarise(
    avg_rating = mean(rating),
    median_rating = median(rating),
    n_evaluations = n(),
    .groups = "drop"
  ) %>%
  arrange(desc(avg_rating))

print(model_summary)

# Visualize overall model performance
ggplot(class_arena_data, aes(x = model_name, y = rating, fill = model_name)) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(alpha = 0.3, width = 0.2) +
  labs(title = "AI Model Ratings: Overall Comparison",
       subtitle = "Each point is one student's evaluation",
       x = "AI Model",
       y = "Rating (1-5)",
       fill = "Model") +
  theme_minimal() +
  theme(legend.position = "none")

########################################################
# PART 7: The Big Reveal - Criteria Analysis
########################################################

# Now let's see how different evaluation criteria affected ratings!

print("Ratings by secret criteria:")
criteria_analysis <- class_arena_data %>%
  group_by(secret_criteria, model_name) %>%
  summarise(
    avg_rating = mean(rating),
    n_evaluations = n(),
    .groups = "drop"
  ) %>%
  arrange(secret_criteria, desc(avg_rating))

print(criteria_analysis)

# Visualize how criteria affected model preferences
ggplot(criteria_analysis, aes(x = model_name, y = avg_rating, fill = model_name)) +
  geom_col(alpha = 0.8) +
  facet_wrap(~ secret_criteria, scales = "free") +
  labs(title = "AI Model Performance by Evaluation Criteria",
       subtitle = "Different criteria led to different 'winner' models",
       x = "AI Model",
       y = "Average Rating",
       fill = "Model") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom")

########################################################
# PART 8: Statistical Analysis
########################################################

# Let's answer the research question: 
# "What's the probability that [Model X] is rated as the better model?"

# Calculate win rates for each model
win_rates <- class_arena_data %>%
  group_by(question_id, secret_criteria) %>%
  summarise(
    winner = model_name[which.max(rating)],
    .groups = "drop"
  ) %>%
  count(winner) %>%
  mutate(win_rate = n / sum(n))

print("Model win rates (probability of being rated highest):")
print(win_rates)

# Statistical significance test
# Are the differences in ratings statistically significant?
if(length(unique(class_arena_data$model_name)) > 2) {
  # ANOVA test
  anova_result <- aov(rating ~ model_name, data = class_arena_data)
  print("ANOVA test results:")
  print(summary(anova_result))
  
  # If significant, do pairwise comparisons
  if(summary(anova_result)[[1]][["Pr(>F)"]][1] < 0.05) {
    print("Pairwise comparisons (Tukey HSD):")
    print(TukeyHSD(anova_result))
  }
}

########################################################
# PART 9: Bias and Ethics Discussion
########################################################

# 🎈 Key Questions for Discussion:

# 1. Why did different students rate the same AI responses differently?
criteria_variation <- class_arena_data %>%
  group_by(model_name, question_id) %>%
  summarise(
    rating_variance = var(rating),
    rating_range = max(rating) - min(rating),
    .groups = "drop"
  )

print("Variation in ratings for the same model responses:")
print(criteria_variation)

# Visualize the disagreement
ggplot(class_arena_data, aes(x = interaction(model_name, question_id), y = rating)) +
  geom_boxplot(aes(fill = model_name), alpha = 0.7) +
  labs(title = "How Much Did Students Disagree?",
       subtitle = "Wide boxes = more disagreement among students",
       x = "Model × Question",
       y = "Rating",
       fill = "Model") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

########################################################
# PART 10: Creating Your Final Report
########################################################

# 🎈 Activity: Write Your Findings
# Based on your analysis, answer these questions:

report_questions <- list(
  q1 = "Which AI model performed best overall?",
  q2 = "Did different evaluation criteria lead to different winners?", 
  q3 = "How much did students disagree about the same responses?",
  q4 = "What does this tell us about 'objective' AI evaluation?",
  q5 = "Whose values are reflected in AI model preferences?"
)

# Write your analysis here:
my_findings <- list(
  q1 = "Based on our analysis...",
  q2 = "When looking at different criteria...", 
  q3 = "Students showed varying levels of agreement...",
  q4 = "This experiment demonstrates that...",
  q5 = "The values reflected seem to be..."
)

# Print a summary report
cat("🎯 CHATBOT ARENA EXPERIMENT RESULTS 🎯\n\n")

for(i in 1:length(report_questions)) {
  cat(paste0(i, ". ", report_questions[[i]], "\n"))
  cat(paste0("   ", my_findings[[i]], "\n\n"))
}

########################################################
# ✨ Extra Challenges
########################################################

# ✨ Challenge 1: Bias Detection
# Can you find evidence of systematic bias in the ratings?
# Hint: Look at patterns by criteria, student, or question type

# ✨ Challenge 2: Prediction Model
# Can you predict which model a student will prefer based on their criteria?

# ✨ Challenge 3: Fairness Metrics
# How would you measure if the evaluation process was "fair"?

########################################################
# 💡 Key Learning Points About AI and Bias
########################################################

# 1. "Objective" evaluation is actually subjective
#    - Different people value different things
#    - What seems "better" depends on your criteria

# 2. AI model comparisons reflect human values
#    - The "best" model depends on what you're optimizing for
#    - Technical accuracy vs creativity vs helpfulness are different goals

# 3. Bias emerges from human preferences
#    - Our own experiences shape what we think is "good"
#    - Diverse perspectives lead to different conclusions

# 4. Context matters for AI evaluation
#    - A model good for one task may be poor for another
#    - Different users have different needs

# 5. Responsible AI requires acknowledging subjectivity
#    - We should be transparent about our evaluation criteria
#    - Include diverse voices in AI development and evaluation

print("🎉 Congratulations! You've conducted your first AI bias research study! 🎉")