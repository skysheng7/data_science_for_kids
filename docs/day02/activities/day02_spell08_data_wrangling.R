# 🔮 Day 2 - Spell 7: Data Transformation Spells

# 🎈 Activity: Clean and Transform
# 🔧 Master the essential data wrangling functions

# Load the magic toolbox
library(dplyr)

# Create a magical school dataset
magic_school <- data.frame(
  student_name = c("Luna", "Max", "Zara", "Finn", "Nova", "Sage", "Rio", "Kai"),
  house = c("Fire", "Water", "Earth", "Air", "Fire", "Water", "Earth", "Air"),
  grade = c(3, 4, 3, 5, 4, 3, 5, 4),
  magic_score = c(85, 92, 78, 95, 88, 82, 90, 86),
  potion_score = c(90, 85, 95, 80, 85, 90, 92, 88),
  flying_score = c(75, 88, 70, 92, 95, 78, 85, 90),
  has_pet = c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)
)

print("🏫 Magic School Dataset:")
print(magic_school)

# 🎯 Challenge 1: SELECT - Pick specific columns
print("\n1️⃣ SELECT: Pick specific columns")
print("Just names and houses:")
names_houses <- select(magic_school, student_name, house)
print(names_houses)

print("\nJust the test scores:")
scores_only <- select(magic_school, student_name, magic_score, potion_score, flying_score)
print(scores_only)

# Your turn: Select just student names and whether they have pets
pet_info <- select(magic_school, ..., ...)
print("Student pet information:")
print(pet_info)

# 🎯 Challenge 2: FILTER - Find specific rows
print("\n2️⃣ FILTER: Find specific rows")
print("Students in Fire house:")
fire_students <- filter(magic_school, house == "Fire")
print(fire_students)

print("\nStudents with magic score > 85:")
high_magic <- filter(magic_school, magic_score > 85)
print(high_magic)

print("\nStudents who have pets:")
pet_owners <- filter(magic_school, has_pet == TRUE)
print(pet_owners)

# Your turn: Find students in grade 4 or 5
older_students <- filter(magic_school, grade >= ...)
print("Older students (grade 4+):")
print(older_students)

# 🎯 Challenge 3: MUTATE - Create new columns
print("\n3️⃣ MUTATE: Create new columns")
# Calculate average score
with_average <- mutate(magic_school, 
                      average_score = (magic_score + potion_score + flying_score) / 3)
print("Dataset with average scores:")
print(select(with_average, student_name, average_score))

# Create performance categories
with_performance <- mutate(magic_school,
                          performance = case_when(
                            magic_score >= 90 ~ "Excellent",
                            magic_score >= 80 ~ "Good", 
                            TRUE ~ "Needs Practice"
                          ))
print("Dataset with performance levels:")
print(select(with_performance, student_name, magic_score, performance))

# Your turn: Create a column for total score (sum of all three scores)
with_total <- mutate(magic_school, total_score = ... + ... + ...)
print("Dataset with total scores:")
print(select(with_total, student_name, total_score))

# 🎯 Challenge 4: GROUP_BY and SUMMARIZE - Group and calculate
print("\n4️⃣ GROUP_BY & SUMMARIZE: Group similar data and calculate summaries")

# Group by house and calculate averages
house_summary <- magic_school %>%
  group_by(house) %>%
  summarize(
    student_count = n(),
    avg_magic = mean(magic_score),
    avg_potion = mean(potion_score),
    avg_flying = mean(flying_score),
    pets_count = sum(has_pet)
  )
print("Summary by house:")
print(house_summary)

# Group by grade level
grade_summary <- magic_school %>%
  group_by(grade) %>%
  summarize(
    students = n(),
    highest_magic = max(magic_score),
    lowest_magic = min(magic_score),
    average_magic = mean(magic_score)
  )
print("Summary by grade:")
print(grade_summary)

# Your turn: Group by whether students have pets
pet_summary <- magic_school %>%
  group_by(...) %>%
  summarize(
    count = n(),
    avg_magic = mean(magic_score)
  )
print("Summary by pet ownership:")
print(pet_summary)

# ✨ Advanced Challenge: Complex filtering and grouping
print("\n✨ Advanced Challenge:")
# Find the top performer in each house
top_per_house <- magic_school %>%
  group_by(house) %>%
  filter(magic_score == max(magic_score)) %>%
  select(student_name, house, magic_score)
print("Top magic student in each house:")
print(top_per_house)

# Students who are above average in ALL subjects
overall_averages <- magic_school %>%
  summarize(
    avg_magic = mean(magic_score),
    avg_potion = mean(potion_score), 
    avg_flying = mean(flying_score)
  )

print("School averages:")
print(overall_averages)

above_average_all <- magic_school %>%
  filter(magic_score > overall_averages$avg_magic,
         potion_score > overall_averages$avg_potion,
         flying_score > overall_averages$avg_flying)
print("Students above average in ALL subjects:")
print(select(above_average_all, student_name, magic_score, potion_score, flying_score))

# 💡 Memory Tip:
# - select() picks COLUMNS (like choosing ingredients)
# - filter() picks ROWS (like finding red candies)
# - mutate() creates NEW COLUMNS (like calculating totals)
# - group_by() groups similar data (like sorting by color)
# - summarize() calculates summaries for each group