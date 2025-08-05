# 🔮 Day 4 - Spell 1: Measuring Magic Cows

# Welcome to the Cow Height Investigation!
# Today we'll learn about central tendency by measuring toy cows

########################################################
# 🎈 Activity: Enter Your Cow Measurements
########################################################

# Step 1: Enter your team's cow heights here (in centimeters)
# Replace each ... with the actual measurement from your rulers
cow_heights <- c(..., ..., ..., ..., ..., ..., ..., ..., ..., ...)

# Let's see what we measured!
print("Our cow heights:")
print(cow_heights)

########################################################
# 🔮 Magic Spell: Calculate Mean (Average)
########################################################

# 💡 What is Mean?
# The mean is like sharing pizza equally among friends
# Add up all heights and divide by how many cows we have

mean_height <- mean(cow_heights)
print(paste("Mean height:", round(mean_height, 2), "cm"))

########################################################
# 🔮 Magic Spell: Calculate Median (Middle Value)
########################################################

# 💡 What is Median?
# The median is the middle kid when everyone lines up by height
# R automatically sorts the numbers and finds the middle

median_height <- median(cow_heights)
print(paste("Median height:", median_height, "cm"))

########################################################
# 🔮 Magic Spell: Find Mode (Most Common Height)
########################################################

# 💡 What is Mode?
# The mode is the height that appears most often
# Like the most popular ice cream flavor in your class

# Create a function to find the mode
get_mode <- function(data) {
  # Count how many times each height appears
  freq_table <- table(data)
  # Find which height appears most often
  mode_value <- names(freq_table)[which.max(freq_table)]
  return(as.numeric(mode_value))
}

mode_height <- get_mode(cow_heights)
print(paste("Mode height:", mode_height, "cm"))

########################################################
# 🔮 Magic Spell: Compare All Three Centers
########################################################

print("=== SUMMARY OF COW HEIGHTS ===")
print(paste("Mean (average):", round(mean_height, 2), "cm"))
print(paste("Median (middle):", median_height, "cm"))
print(paste("Mode (most common):", mode_height, "cm"))

# 💡 Which measure is highest? Which is lowest?
# Are they all the same or different?

########################################################
# ✨ Challenge: Which Cow is Closest to Each Center?
########################################################

# Find which cow is closest to the mean
closest_to_mean <- which.min(abs(cow_heights - mean_height))
print(paste("Cow #", closest_to_mean, "is closest to the mean"))

# Find which cow is closest to the median  
closest_to_median <- which.min(abs(cow_heights - median_height))
print(paste("Cow #", closest_to_median, "is closest to the median"))

########################################################
# 💡 Memory Tips
########################################################

# Remember the three centers:
# 🥪 MEAN = Add all and divide (sharing sandwiches equally)
# 👫 MEDIAN = Middle person in a line
# 🍦 MODE = Most popular choice (like favorite ice cream)

print("Great job measuring your magic cows! 🐄✨")