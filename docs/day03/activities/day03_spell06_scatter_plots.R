# 🔮 Day 2 - Spell 10: Scatter Plot Adventures

# 🎈 Activity: Relationship Explorer
# 🔍 Relationship Hunter: Do tall people have bigger feet? Let's find out!

# Load our visualization magic
library(ggplot2)
library(dplyr)

# Create magical creature data with interesting relationships
magical_creatures <- data.frame(
  name = c("Tiny", "Sparkle", "Thunder", "Moonbeam", "Flash", "Whisper", 
           "Blaze", "Frost", "Echo", "Storm", "Glimmer", "Shadow"),
  height_cm = c(45, 180, 250, 160, 95, 140, 220, 175, 130, 240, 85, 200),
  wingspan_cm = c(90, 360, 500, 320, 190, 280, 440, 350, 260, 480, 170, 400),
  magic_power = c(95, 85, 70, 90, 88, 92, 75, 80, 85, 72, 90, 78),
  flying_speed = c(120, 95, 60, 105, 110, 100, 70, 85, 95, 65, 115, 80),
  age_years = c(50, 150, 300, 120, 80, 200, 250, 180, 90, 280, 60, 220),
  type = c("Fairy", "Unicorn", "Dragon", "Pegasus", "Sprite", "Wolf", 
           "Dragon", "Ice_spirit", "Echo_spirit", "Dragon", "Pixie", "Shadow")
)

print("🐉 Magical Creatures Dataset:")
print(magical_creatures)

# 🎯 Challenge 1: Basic scatter plot
print("\n1️⃣ Basic Scatter Plot:")

# Do taller creatures have bigger wingspans?
height_wingspan <- ggplot(magical_creatures, aes(x = height_cm, y = wingspan_cm)) +
  geom_point(size = 3, color = "blue") +
  labs(title = "Height vs Wingspan in Magical Creatures",
       x = "Height (cm)", 
       y = "Wingspan (cm)") +
  theme_minimal()

print(height_wingspan)

print("🔍 What do you see?")
print("Do taller creatures tend to have bigger wingspans?")
print("Are there any outliers (creatures that don't follow the pattern)?")

# 🎯 Challenge 2: Adding creature names to points
print("\n2️⃣ Adding Labels to Points:")

labeled_plot <- ggplot(magical_creatures, aes(x = height_cm, y = wingspan_cm)) +
  geom_point(size = 3, color = "red") +
  geom_text(aes(label = name), vjust = -1, size = 3) +
  labs(title = "Height vs Wingspan (with creature names)",
       x = "Height (cm)", y = "Wingspan (cm)") +
  theme_minimal()

print(labeled_plot)

# Your turn: Create a scatter plot of magic power vs flying speed
power_speed <- ggplot(magical_creatures, aes(x = ..., y = ...)) +
  geom_point(size = 3, color = "...") +
  geom_text(aes(label = name), vjust = -1, size = 3) +
  labs(title = "... vs ...",
       x = "...", y = "...") +
  theme_minimal()

print(power_speed)

# 🎯 Challenge 3: Color-coding by categories
print("\n3️⃣ Color-coding by Creature Type:")

type_colored <- ggplot(magical_creatures, aes(x = height_cm, y = wingspan_cm, color = type)) +
  geom_point(size = 4) +
  labs(title = "Height vs Wingspan by Creature Type",
       x = "Height (cm)", y = "Wingspan (cm)", color = "Creature Type") +
  theme_minimal()

print(type_colored)

# Size by age
size_by_age <- ggplot(magical_creatures, aes(x = magic_power, y = flying_speed, size = age_years)) +
  geom_point(alpha = 0.7, color = "purple") +
  labs(title = "Magic Power vs Flying Speed (size = age)",
       x = "Magic Power", y = "Flying Speed", size = "Age (years)") +
  theme_minimal()

print(size_by_age)

# 🎯 Challenge 4: Multiple relationships in one plot
print("\n4️⃣ Complex Relationships:")

# Color by type, size by age, position by height and wingspan
complex_plot <- ggplot(magical_creatures, aes(x = height_cm, y = wingspan_cm, 
                                             color = type, size = age_years)) +
  geom_point(alpha = 0.8) +
  geom_text(aes(label = name), vjust = -2, size = 2.5, color = "black") +
  labs(title = "Multiple Relationships: Height, Wingspan, Type, and Age",
       x = "Height (cm)", y = "Wingspan (cm)", 
       color = "Type", size = "Age") +
  theme_minimal()

print(complex_plot)

# ✨ Advanced Challenge: Adding trend lines
print("\n✨ Advanced Challenge - Trend Lines:")

# Add a trend line to see the overall pattern
with_trend <- ggplot(magical_creatures, aes(x = height_cm, y = wingspan_cm)) +
  geom_point(size = 3, color = "darkblue") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  geom_text(aes(label = name), vjust = -1, size = 3) +
  labs(title = "Height vs Wingspan with Trend Line",
       x = "Height (cm)", y = "Wingspan (cm)") +
  theme_minimal()

print(with_trend)

# Your turn: Add a trend line to age vs magic power
age_magic_trend <- ggplot(magical_creatures, aes(x = age_years, y = magic_power)) +
  geom_point(size = 3, color = "...") +
  geom_smooth(method = "...", color = "...", se = FALSE) +
  labs(title = "... vs ... with Trend Line",
       x = "...", y = "...") +
  theme_minimal()

print(age_magic_trend)

# 🎯 Challenge 5: Correlation investigation
print("\n5️⃣ Correlation Investigation:")

# Calculate correlation between different variables
correlations <- magical_creatures %>%
  select(height_cm, wingspan_cm, magic_power, flying_speed, age_years) %>%
  cor() %>%
  round(2)

print("🔢 Correlation Matrix:")
print("Values close to 1 = strong positive relationship")
print("Values close to -1 = strong negative relationship") 
print("Values close to 0 = no relationship")
print(correlations)

# Create multiple scatter plots to explore relationships
library(tidyr)

# Reshape data for multiple plots
creature_pairs <- magical_creatures %>%
  select(name, height_cm, wingspan_cm, magic_power, flying_speed) %>%
  pivot_longer(cols = c(height_cm, wingspan_cm, magic_power, flying_speed),
               names_to = "measurement", values_to = "value")

# 🎯 Your Detective Mission:
print("\n🕵️ Your Relationship Detective Mission:")
print("1. Which two variables have the strongest relationship?")
print("2. Are there any negative relationships (one goes up, other goes down)?")
print("3. Which creatures are outliers in different plots?")
print("4. What can you predict about a creature if you know one measurement?")

# Create your own scatter plot investigation
print("\n🎨 Your Turn - Create Your Own Investigation:")
print("Pick two variables and explore their relationship!")

# my_investigation <- ggplot(magical_creatures, aes(x = ..., y = ...)) +
#   geom_point(size = 3, color = "...") +
#   # Add more layers if you want!
#   labs(title = "My Investigation: ... vs ...",
#        x = "...", y = "...") +
#   theme_minimal()
# 
# print(my_investigation)

# 💡 Memory Tip:
# - Scatter plots show relationships between TWO variables
# - geom_point() creates the dots
# - aes() maps variables to x, y, color, size
# - geom_smooth() adds trend lines
# - Strong correlations = points form a line pattern
# - Weak correlations = points are scattered randomly
# - Look for outliers that don't follow the pattern!