# 🔮 Day 2 - Spell 8: Pipeline Magic

# 🎈 Activity: Chain Commands with Pipes
# 🌊 Learn the magical %>% operator to chain commands smoothly

# Load the pipe magic
library(dplyr)

# Our magical creatures dataset
creatures <- data.frame(
  name = c("Sparkle", "Thunder", "Moonbeam", "Flash", "Whisper", "Blaze", "Frost", "Echo"),
  type = c("Unicorn", "Dragon", "Pegasus", "Phoenix", "Wolf", "Dragon", "Ice_fairy", "Echo_spirit"),
  realm = c("Forest", "Mountain", "Sky", "Desert", "Forest", "Mountain", "Arctic", "Cave"),
  power_level = c(85, 95, 78, 92, 70, 88, 80, 75),
  age_years = c(120, 300, 95, 150, 45, 250, 200, 80),
  is_friendly = c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE)
)

print("🐉 Magical Creatures Dataset:")
print(creatures)

# 🎯 WITHOUT pipes - the old way (messy and hard to read)
print("\n❌ The OLD way (without pipes) - messy and confusing:")

# Step 1: Filter friendly creatures
step1 <- filter(creatures, is_friendly == TRUE)
# Step 2: Select name, type, and power_level  
step2 <- select(step1, name, type, power_level)
# Step 3: Arrange by power level (highest first)
step3 <- arrange(step2, desc(power_level))

print("Result the old way:")
print(step3)

# 🌊 WITH pipes - the NEW way (clean and easy to read!)
print("\n✅ The NEW way (with pipes) - clean and magical:")

friendly_powerful <- creatures %>%
  filter(is_friendly == TRUE) %>%
  select(name, type, power_level) %>%
  arrange(desc(power_level))

print("Same result, but cleaner code:")
print(friendly_powerful)

# 🎯 Challenge 1: Basic pipe practice
print("\n1️⃣ Basic pipe practice:")

# Find all Dragons and show their names and ages
dragons <- creatures %>%
  filter(type == "Dragon") %>%
  select(name, age_years)

print("Dragons and their ages:")
print(dragons)

# Your turn: Find creatures from the Forest and show name, type, power_level
forest_creatures <- creatures %>%
  filter(realm == "...") %>%
  select(..., ..., ...)

print("Forest creatures:")
print(forest_creatures)

# 🎯 Challenge 2: Adding calculations with pipes
print("\n2️⃣ Adding calculations with pipes:")

# Calculate power per year and find the most efficient creatures
efficiency_ranking <- creatures %>%
  mutate(power_per_year = power_level / age_years) %>%
  arrange(desc(power_per_year)) %>%
  select(name, power_level, age_years, power_per_year)

print("Creatures ranked by power efficiency:")
print(efficiency_ranking)

# Your turn: Add age categories and filter young powerful creatures
young_powerful <- creatures %>%
  mutate(age_category = case_when(
    age_years < 100 ~ "Young",
    age_years < 200 ~ "Adult", 
    TRUE ~ "Ancient"
  )) %>%
  filter(age_category == "..." & power_level > ...) %>%
  select(name, age_years, age_category, power_level)

print("Young but powerful creatures:")
print(young_powerful)

# 🎯 Challenge 3: Grouping with pipes
print("\n3️⃣ Grouping with pipes:")

# Summarize by realm
realm_summary <- creatures %>%
  group_by(realm) %>%
  summarize(
    creature_count = n(),
    avg_power = mean(power_level),
    friendly_count = sum(is_friendly),
    oldest_creature = max(age_years)
  ) %>%
  arrange(desc(avg_power))

print("Summary by realm:")
print(realm_summary)

# Your turn: Group by creature type and calculate statistics
type_summary <- creatures %>%
  group_by(...) %>%
  summarize(
    count = n(),
    avg_age = mean(...),
    max_power = max(...)
  )

print("Summary by creature type:")
print(type_summary)

# ✨ Advanced Challenge: Complex pipe chain
print("\n✨ Advanced Challenge - Complex pipe chain:")

# Find the most powerful friendly creature in each realm
top_friendly_per_realm <- creatures %>%
  filter(is_friendly == TRUE) %>%
  group_by(realm) %>%
  filter(power_level == max(power_level)) %>%
  select(name, realm, power_level) %>%
  arrange(desc(power_level))

print("Most powerful friendly creature in each realm:")
print(top_friendly_per_realm)

# 🎯 Your Creative Challenge: Design your own pipe chain!
# Create a pipe that does something interesting with the data
# Ideas: Find creatures with specific characteristics, calculate new metrics, etc.

my_analysis <- creatures %>%
  # Add your pipe steps here!
  # filter(...) %>%
  # mutate(...) %>%
  # group_by(...) %>%
  # summarize(...) %>%
  # arrange(...)
  
print("My custom analysis:")
# print(my_analysis)

# 🔄 Pipe vs No Pipe Comparison
print("\n🔄 Why pipes are better:")
print("Without pipes: hard to read, many temporary variables")
print("With pipes: reads like a story, easy to follow")
print("Think of %>% as 'and then...'")
print("Filter friendly creatures AND THEN select columns AND THEN arrange by power")

# 💡 Memory Tip:
# - %>% means "and then do this"
# - Read pipes from top to bottom like a recipe
# - Each step gets the result from the step above
# - No need to create temporary variables
# - Makes code much easier to read and understand!