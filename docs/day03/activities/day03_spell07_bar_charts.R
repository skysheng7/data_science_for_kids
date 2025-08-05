# 🔮 Day 2 - Spell 11: Bar Chart Champions

# 🎈 Activity: Category Comparison  
# 🏆 Category Champions: Which group wins the data competition?

# Load our visualization magic
library(ggplot2)
library(dplyr)

# Create magical school house data
house_data <- data.frame(
  house = c("Fire", "Water", "Earth", "Air"),
  students = c(25, 28, 22, 30),
  total_points = c(850, 920, 780, 895),
  quidditch_wins = c(8, 5, 3, 9),
  spell_competitions = c(12, 15, 18, 10)
)

print("🏰 Magic School House Data:")
print(house_data)

# Individual student achievements
student_achievements <- data.frame(
  student = c("Luna", "Max", "Zara", "Finn", "Nova", "Sage", "Rio", "Kai", "Sky", "Alex"),
  house = c("Fire", "Water", "Earth", "Air", "Fire", "Water", "Earth", "Air", "Fire", "Water"),
  badges_earned = c(8, 12, 15, 10, 9, 14, 18, 11, 7, 13),
  favorite_subject = c("Potions", "Charms", "Herbology", "Flying", "Defense", 
                      "Transfiguration", "Herbology", "Flying", "Potions", "Charms")
)

print("🎓 Student Achievement Data:")
print(student_achievements)

########################################################
# 🎯 Challenge 1: Basic bar chart
print("\n1️⃣ Basic Bar Chart:")

# Number of students per house
student_count <- ggplot(house_data, aes(x = house, y = students)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Number of Students per House",
       x = "House", y = "Number of Students") +
  theme_minimal()

print(student_count)

# Your turn: Create a bar chart of total points per house
points_chart <- ggplot(house_data, aes(x = house, y = ...)) +
  geom_bar(stat = "identity", fill = "...") +
  labs(title = "... per House",
       x = "House", y = "...") +
  theme_minimal()

print(points_chart)

########################################################

# 🎯 Challenge 2: Colorful bar charts
print("\n2️⃣ Colorful Bar Charts:")

# Color each house differently
colorful_houses <- ggplot(house_data, aes(x = house, y = students, fill = house)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Fire" = "red", "Water" = "blue", 
                              "Earth" = "brown", "Air" = "lightgray")) +
  labs(title = "Students per House (House Colors)",
       x = "House", y = "Number of Students") +
  theme_minimal() +
  theme(legend.position = "none")  # Hide legend since colors match names

print(colorful_houses)

# Quidditch wins with custom colors
quidditch_chart <- ggplot(house_data, aes(x = house, y = quidditch_wins, fill = house)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Fire" = "orange", "Water" = "cyan", 
                              "Earth" = "darkgreen", "Air" = "purple")) +
  labs(title = "Quidditch Wins by House",
       x = "House", y = "Quidditch Wins") +
  theme_minimal() +
  theme(legend.position = "none")

print(quidditch_chart)

########################################################

# 🎯 Challenge 3: Grouped bar charts
print("\n3️⃣ Grouped Bar Charts:")

# Reshape data for grouped comparison
library(tidyr)
house_long <- house_data %>%
  select(house, quidditch_wins, spell_competitions) %>%
  pivot_longer(cols = c(quidditch_wins, spell_competitions),
               names_to = "competition_type", 
               values_to = "wins")

print("Reshaped data for grouping:")
print(house_long)

grouped_bars <- ggplot(house_long, aes(x = house, y = wins, fill = competition_type)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("quidditch_wins" = "gold", "spell_competitions" = "purple")) +
  labs(title = "House Performance: Quidditch vs Spell Competitions",
       x = "House", y = "Number of Wins", fill = "Competition Type") +
  theme_minimal()

print(grouped_bars)

########################################################

# 🎯 Challenge 4: Student-level bar charts
print("\n4️⃣ Student-Level Bar Charts:")

# Individual student badges
badges_chart <- ggplot(student_achievements, aes(x = student, y = badges_earned, fill = house)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Fire" = "red", "Water" = "blue", 
                              "Earth" = "brown", "Air" = "lightgray")) +
  labs(title = "Badges Earned by Each Student",
       x = "Student", y = "Badges Earned", fill = "House") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(badges_chart)

# Count students by favorite subject
subject_summary <- student_achievements %>%
  group_by(favorite_subject) %>%
  summarize(student_count = n())

subject_chart <- ggplot(subject_summary, aes(x = favorite_subject, y = student_count)) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  labs(title = "Most Popular Subjects",
       x = "Subject", y = "Number of Students") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(subject_chart)

########################################################

# 🎯 Challenge 5: Horizontal bar charts
print("\n5️⃣ Horizontal Bar Charts:")

# Sometimes horizontal bars are easier to read
horizontal_points <- ggplot(house_data, aes(x = reorder(house, total_points), y = total_points)) +
  geom_bar(stat = "identity", fill = "coral") +
  coord_flip() +  # This makes it horizontal!
  labs(title = "House Points (Horizontal)",
       x = "House", y = "Total Points") +
  theme_minimal()

print(horizontal_points)

# Your turn: Create a horizontal bar chart for spell competitions
horizontal_spells <- ggplot(house_data, aes(x = reorder(house, ...), y = ...)) +
  geom_bar(stat = "identity", fill = "...") +
  coord_flip() +
  labs(title = "... (Horizontal)",
       x = "House", y = "...") +
  theme_minimal()

print(horizontal_spells)

########################################################

# ✨ Advanced Challenge: Stacked bar charts
print("\n✨ Advanced Challenge - Stacked Bar Charts:")

# Create data showing how many badges each house earned in total
house_badges <- student_achievements %>%
  group_by(house) %>%
  summarize(total_badges = sum(badges_earned))

# Combine with original house data
house_complete <- house_data %>%
  left_join(house_badges, by = "house")

print("Complete house data:")
print(house_complete)

# Create a stacked bar showing different types of achievements
house_achievements <- house_complete %>%
  select(house, quidditch_wins, spell_competitions, total_badges) %>%
  pivot_longer(cols = c(quidditch_wins, spell_competitions, total_badges),
               names_to = "achievement_type", 
               values_to = "count")

stacked_chart <- ggplot(house_achievements, aes(x = house, y = count, fill = achievement_type)) +
  geom_bar(stat = "identity") +
  labs(title = "All House Achievements (Stacked)",
       x = "House", y = "Achievement Count", fill = "Achievement Type") +
  theme_minimal()

print(stacked_chart)

# 🎯 Your Championship Analysis:
print("\n🏆 Your Championship Analysis:")
print("Based on the bar charts, answer these questions:")
print("1. Which house has the most students?")
print("2. Which house has the highest total points?") 
print("3. Which house is best at Quidditch?")
print("4. Which house wins the most spell competitions?")
print("5. What's the most popular subject?")
print("6. If you had to declare an overall winner, which house would it be?")

# Calculate some summary statistics
print("\n📊 Quick Stats:")
print(paste("Highest scoring house:", house_data$house[which.max(house_data$total_points)]))
print(paste("Best at Quidditch:", house_data$house[which.max(house_data$quidditch_wins)]))
print(paste("Most spell competition wins:", house_data$house[which.max(house_data$spell_competitions)]))

# 💡 Memory Tip:
# - Bar charts compare CATEGORIES (groups)
# - geom_bar() creates bar charts
# - stat="identity" uses the actual values in your data
# - fill= colors the bars
# - coord_flip() makes bars horizontal
# - position="dodge" puts bars side by side
# - Use bar charts when you want to compare amounts between groups!