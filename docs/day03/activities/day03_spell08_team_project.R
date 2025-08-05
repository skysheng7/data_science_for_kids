# 🔮 Day 2 - Spell 12: Collaborative Data Investigation

# 🎈 Activity: Partner Data Storytelling
# 🕵️‍♀️ Data Detectives Unite! Work with a teammate to solve data mysteries!

# Load all our magical tools
library(ggplot2)
library(dplyr)
library(readr)

print("🎉 Welcome to the Team Data Detective Challenge!")
print("Your mission: Pick a dataset, investigate it, and tell its story!")

# 📁 Available Datasets (choose one for your investigation)
print("\n📁 Available Mystery Datasets:")

# Dataset 1: Magical Pet Adoption Center
pet_adoption <- data.frame(
  pet_id = 1:50,
  pet_type = sample(c("Dragon", "Unicorn", "Phoenix", "Griffin", "Pegasus"), 50, replace = TRUE),
  age_months = sample(1:120, 50),
  adoption_fee = sample(50:500, 50),
  days_at_center = sample(1:365, 50),
  is_adopted = sample(c(TRUE, FALSE), 50, replace = TRUE, prob = c(0.7, 0.3)),
  magic_level = sample(1:100, 50),
  friendliness = sample(1:10, 50)
)

# Dataset 2: Magic School Exam Results  
exam_results <- data.frame(
  student_id = 1:100,
  house = sample(c("Fire", "Water", "Earth", "Air"), 100, replace = TRUE),
  study_hours = sample(0:40, 100),
  previous_grade = sample(c("A", "B", "C", "D"), 100, replace = TRUE, prob = c(0.2, 0.3, 0.3, 0.2)),
  exam_score = sample(40:100, 100),
  has_tutor = sample(c(TRUE, FALSE), 100, replace = TRUE, prob = c(0.3, 0.7)),
  favorite_subject = sample(c("Potions", "Charms", "Defense", "Transfiguration"), 100, replace = TRUE)
)

# Dataset 3: Magical Creature Sightings
creature_sightings <- data.frame(
  sighting_id = 1:75,
  creature_type = sample(c("Dragon", "Unicorn", "Fairy", "Troll", "Centaur"), 75, replace = TRUE),
  location = sample(c("Enchanted_Forest", "Crystal_Cave", "Mystic_Lake", "Thunder_Mountain"), 75, replace = TRUE),
  time_of_day = sample(c("Dawn", "Morning", "Afternoon", "Evening", "Night"), 75, replace = TRUE),
  weather = sample(c("Sunny", "Rainy", "Cloudy", "Stormy"), 75, replace = TRUE),
  rarity_score = sample(1:10, 75),
  photographer_level = sample(1:5, 75)
)

print("1. 🐾 Pet Adoption Center - Which pets get adopted fastest?")
print("2. 📚 Magic School Exams - What helps students get better grades?")
print("3. 🌟 Creature Sightings - Where and when are magical creatures spotted?")

########################################################

# 🎯 STEP 1: Choose Your Dataset (uncomment ONE)
print("\n🎯 STEP 1: Choose your dataset!")
print("Uncomment (remove #) from ONE of these lines:")

# my_data <- pet_adoption
# my_data <- exam_results  
# my_data <- creature_sightings

# For demonstration, let's use pet adoption
my_data <- pet_adoption
print("📊 Preview of chosen dataset:")
print(head(my_data))

########################################################

# 🎯 STEP 2: Explore Your Data
print("\n🎯 STEP 2: Explore your data!")

print("Dataset dimensions:")
print(paste("Rows:", nrow(my_data), "| Columns:", ncol(my_data)))

print("Column names:")
print(names(my_data))

print("Data summary:")
print(summary(my_data))

########################################################

# 🎯 STEP 3: Ask Research Questions
print("\n🎯 STEP 3: Brainstorm research questions with your partner!")
print("Example questions for pet adoption data:")
print("- Which pet types are most popular?")
print("- Do older pets take longer to get adopted?") 
print("- Does adoption fee affect adoption success?")
print("- Which pets have the highest magic levels?")
print("- Is there a relationship between friendliness and adoption?")

# Write your research question here:
research_question <- "Which pet types are adopted most quickly?"
print(paste("🔍 Our research question:", research_question))

########################################################

# 🎯 STEP 4: Data Wrangling
print("\n🎯 STEP 4: Clean and prepare your data!")

# Example analysis for pet adoption
adopted_pets <- my_data %>%
  filter(is_adopted == TRUE)

adoption_summary <- my_data %>%
  group_by(pet_type) %>%
  summarize(
    total_pets = n(),
    adopted_count = sum(is_adopted),
    adoption_rate = round(mean(is_adopted) * 100, 1),
    avg_days_to_adopt = round(mean(days_at_center[is_adopted]), 1),
    avg_magic_level = round(mean(magic_level), 1)
  ) %>%
  arrange(desc(adoption_rate))

print("📊 Adoption Summary by Pet Type:")
print(adoption_summary)

# Your turn: Create your own summary
# my_summary <- my_data %>%
#   group_by(...) %>%
#   summarize(
#     ... = ...,
#     ... = ...
#   )

########################################################

# 🎯 STEP 5: Create Visualizations
print("\n🎯 STEP 5: Create compelling visualizations!")

# Visualization 1: Bar chart of adoption rates
viz1 <- ggplot(adoption_summary, aes(x = reorder(pet_type, adoption_rate), y = adoption_rate)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  coord_flip() +
  labs(title = "Adoption Rates by Pet Type",
       x = "Pet Type", y = "Adoption Rate (%)") +
  theme_minimal()

print(viz1)

# Visualization 2: Scatter plot of age vs days at center
viz2 <- ggplot(my_data, aes(x = age_months, y = days_at_center, color = is_adopted)) +
  geom_point(size = 3, alpha = 0.7) +
  scale_color_manual(values = c("TRUE" = "green", "FALSE" = "red")) +
  labs(title = "Pet Age vs Time at Adoption Center",
       x = "Age (months)", y = "Days at Center", color = "Adopted") +
  theme_minimal()

print(viz2)

# Your turn: Create your own visualization
# my_viz <- ggplot(my_data, aes(x = ..., y = ...)) +
#   geom_...() +
#   labs(title = "...", x = "...", y = "...") +
#   theme_minimal()

########################################################

# 🎯 STEP 6: Tell Your Story
print("\n🎯 STEP 6: Prepare your presentation!")
print("With your partner, prepare to share:")
print("1. Your research question")
print("2. What you discovered in the data")
print("3. Your most interesting visualization")
print("4. One surprising finding")
print("5. What you would investigate next")

# Summary findings template
print("\n📝 Our Findings:")
print("Research Question: Which pet types are adopted most quickly?")
print("Key Discovery: [Fill in what you found]")
print("Surprising Finding: [Something unexpected]")
print("Recommendation: [What should the adoption center do?]")

########################################################

# 🎯 STEP 7: Bonus Challenges
print("\n✨ Bonus Challenges (if time allows):")
print("🌟 Create a correlation matrix between numeric variables")
print("🌟 Make a multi-panel plot showing different aspects")
print("🌟 Add trend lines to your scatter plots")
print("🌟 Create a stacked bar chart")
print("🌟 Calculate and display summary statistics")

# Example bonus: Correlation matrix
if("corrplot" %in% rownames(installed.packages())) {
  library(corrplot)
  numeric_data <- my_data %>% select_if(is.numeric)
  cor_matrix <- cor(numeric_data)
  print("🔢 Correlation Matrix:")
  print(round(cor_matrix, 2))
}

########################################################

# 🎯 Presentation Template
print("\n🎤 Presentation Template:")
print("👋 'Hi everyone! We investigated [dataset name]'")
print("❓ 'Our research question was: [question]'") 
print("📊 'We found that [key finding]'")
print("😮 'The most surprising thing was [surprise]'")
print("📈 'This chart shows [explain your best visualization]'")
print("💡 'Based on our analysis, we recommend [recommendation]'")
print("🤔 'Next, we'd like to investigate [future question]'")

# Save your work
print("\n💾 Don't forget to save your work!")
print("Save your visualizations and be ready to share!")

# 💡 Memory Tip:
# - Good data stories answer specific questions
# - Always explore your data before making visualizations
# - The best insights often come from combining multiple views
# - Simple, clear visualizations are usually the most powerful
# - Practice explaining your findings in simple terms
# - Every dataset has stories waiting to be discovered!