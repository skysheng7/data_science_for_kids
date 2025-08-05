# 🔮 Day 3 - Spell 3: Grouping and Summarizing

# 🎈 Activity: Finding Patterns in Groups
# 🔍 Learn to group data and calculate summaries for each group!

# Load our data toolkit
library(dplyr)

# Let's load our creature data (make sure you've run Spell 1 first!)
creature_data <- read.csv("datasets/creature_sightings.csv")

print("🐉 Our creature data:")
head(creature_data)

# 🎯 Challenge 1: Group by creature type and calculate totals
print("\n📊 Grouping creatures by type:")

creature_summary <- creature_data %>%
  group_by(creature_type) %>%
  summarize(
    total_sightings = sum(count),
    average_per_sighting = mean(count),
    number_of_locations = n()
  )

print(creature_summary)

########################################################

# 🎯 Challenge 2: Group by location
print("\n🌍 Grouping creatures by location:")

location_summary <- creature_data %>%
  group_by(location) %>%
  summarize(
    total_creatures = sum(count),
    different_types = n_distinct(creature_type),
    most_common_count = max(count)
  )

print(location_summary)

########################################################

# 🎯 Challenge 3: Multiple grouping variables
print("\n🔍 Grouping by both creature type AND location:")

detailed_summary <- creature_data %>%
  group_by(creature_type, location) %>%
  summarize(
    total_count = sum(count),
    avg_count = mean(count),
    .groups = "drop"  # This removes the grouping
  )

print(detailed_summary)

# 💡 Understanding the functions:
print("\n🔮 Understanding our grouping functions:")
print("- group_by(): Groups data by categories")
print("- summarize(): Calculates summaries for each group")
print("- sum(): Adds up all numbers")
print("- mean(): Calculates the average")
print("- n(): Counts how many rows in each group")
print("- n_distinct(): Counts unique values")
print("- max(): Finds the highest number")

########################################################

# ✨ Challenge: Create your own grouping summary!
print("\n📝 Your turn to group and summarize!")

# Try to find:
# 1. Which location has the most diverse creatures?
# 2. Which creature type appears in the most locations?
# 3. What's the average sighting count for each location?

# Hint: Use the functions you learned above!

print("🎉 Great job learning to find patterns in groups!")
print("🔄 Next, we'll learn how to chain these operations together smoothly!")