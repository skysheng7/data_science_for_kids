# 🔮 Day 4 - Spell 2: Cow Height Spread

# Let's explore how spread out our cow heights are!
# This tells us if our cows are all similar or very different

########################################################
# 🎈 Activity: How Different Are Our Cows?
########################################################

# First, make sure you have your cow heights from Spell 1
# If you don't have them, enter them here:
# cow_heights <- c(..., ..., ..., ..., ..., ..., ..., ..., ..., ...)

print("Our cow heights:")
print(cow_heights)

########################################################
# 🔮 Magic Spell: Calculate Standard Deviation
########################################################

# 💡 What is Standard Deviation?
# It measures how spread out your data is
# Small number = cows are similar heights (like siblings)
# Big number = cows are very different heights (babies and giants!)

std_dev <- sd(cow_heights)
print(paste("Standard deviation:", round(std_dev, 2), "cm"))

if (std_dev < 2) {
  print("Your cows are quite similar in height! 👫")
} else if (std_dev < 5) {
  print("Your cows have medium variation in height! 📏")
} else {
  print("Your cows are very different heights! 🐄👶🦣")
}

########################################################
# 🔮 Magic Spell: Calculate Range
########################################################

# 💡 What is Range?
# Range = biggest cow height - smallest cow height
# It tells us the difference between the tallest and shortest

range_value <- max(cow_heights) - min(cow_heights)
print(paste("Range:", range_value, "cm"))
print(paste("Tallest cow:", max(cow_heights), "cm"))
print(paste("Shortest cow:", min(cow_heights), "cm"))

########################################################
# 🔮 Magic Spell: Visualize Our Cow Heights
########################################################

# Let's make a histogram to see the pattern of our cow heights!
library(ggplot2)

# Create a data frame for plotting
cow_data <- data.frame(heights = cow_heights)

# Create the histogram
ggplot(cow_data, aes(x = heights)) +
  geom_histogram(bins = 5, fill = "skyblue", color = "black") +
  labs(title = "Heights of Our Magic Cows", 
       x = "Height (cm)", 
       y = "Number of Cows") +
  theme_minimal() +
  theme(text = element_text(size = 14))

########################################################
# ✨ Challenge: Add Lines for Mean and Median
########################################################

# Let's add lines to show where the mean and median are
mean_height <- mean(cow_heights)
median_height <- median(cow_heights)

ggplot(cow_data, aes(x = heights)) +
  geom_histogram(bins = 5, fill = "lightcoral", color = "black") +
  geom_vline(aes(xintercept = mean_height), 
             color = "blue", linetype = "dashed", size = 1.5) +
  geom_vline(aes(xintercept = median_height), 
             color = "red", linetype = "dashed", size = 1.5) +
  labs(title = "Cow Heights with Mean and Median", 
       x = "Height (cm)", 
       y = "Number of Cows") +
  theme_minimal() +
  theme(text = element_text(size = 14)) +
  annotate("text", x = mean_height + 0.5, y = 2, 
           label = "Mean", color = "blue", size = 4) +
  annotate("text", x = median_height - 0.5, y = 2, 
           label = "Median", color = "red", size = 4)

########################################################
# 🔮 Magic Spell: Quartiles (Extra Magic!)
########################################################

# 💡 What are Quartiles?
# They divide your data into 4 equal parts
# Like cutting a cake into 4 equal slices!

quartiles <- quantile(cow_heights)
print("Quartiles (4 equal parts):")
print(quartiles)

# The middle 50% of cows are between Q1 and Q3
q1 <- quartiles[2]  # 25th percentile
q3 <- quartiles[4]  # 75th percentile
iqr <- q3 - q1      # Interquartile Range

print(paste("Middle 50% of cows are between", q1, "and", q3, "cm"))
print(paste("Interquartile Range (IQR):", iqr, "cm"))

########################################################
# 💡 Summary: What We Learned
########################################################

print("=== COW SPREAD SUMMARY ===")
print(paste("Standard Deviation:", round(std_dev, 2), "cm"))
print(paste("Range:", range_value, "cm"))
print(paste("IQR (middle 50%):", round(iqr, 2), "cm"))

if (std_dev > range_value/3) {
  print("Your cows are pretty spread out! 📏")
} else {
  print("Your cows are clustered together! 👭")
}

print("Great job exploring cow height variation! 🐄📊")