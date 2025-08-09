# 🔮 Day 4 - Spell 1: Distribution Detective Mission
# Discover the magical secrets of mean, median, and mode through different creature power distributions!

########################################################
# 💡 What are Distributions?
# Think of distributions like different ways data can be shaped - some are balanced (symmetrical), 
# some lean to one side (skewed), and some have unusual outliers!

# Load our magical libraries
library(ggplot2)
library(dplyr)

# Load our magical creature dataset
creatures <- read.csv("datasets/magical_creatures_stats.csv")

# Let's peek at our data first
head(creatures)

########################################################
# 🐉 Investigation 1: Dragon Power (Normal Distribution)
# Dragons have very balanced power - most dragons are medium strength, 
# with fewer very weak or very strong dragons

# Create a histogram of dragon power
ggplot(creatures, aes(x = dragon_power_normal)) +
  geom_histogram(bins = 15, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "🐉 Dragon Power Distribution (Symmetrical)", 
       x = "Dragon Power Level", 
       y = "Number of Dragons") +
  theme_minimal()

# Calculate statistics for dragon power
dragon_stats <- creatures %>%
  summarise(
    mean_power = mean(dragon_power_normal),
    median_power = median(dragon_power_normal),
    min_power = min(dragon_power_normal),
    max_power = max(dragon_power_normal)
  )

print("🐉 Dragon Power Statistics:")
print(dragon_stats)

# 💡 Key Learning: In symmetrical distributions, mean and median are very close!

########################################################
# 🦄 Investigation 2: Unicorn Magic (Left-Skewed Distribution)
# Most unicorns have high magic, but a few have very low magic - this creates a "tail" on the left

# Create histogram of unicorn magic
ggplot(creatures, aes(x = unicorn_magic_left_skewed)) +
  geom_histogram(bins = 15, fill = "purple", color = "black", alpha = 0.7) +
  labs(title = "🦄 Unicorn Magic Distribution (Left-Skewed)", 
       x = "Unicorn Magic Level", 
       y = "Number of Unicorns") +
  theme_minimal()

# Calculate statistics for unicorn magic
unicorn_stats <- creatures %>%
  summarise(
    mean_magic = mean(unicorn_magic_left_skewed),
    median_magic = median(unicorn_magic_left_skewed),
    min_magic = min(unicorn_magic_left_skewed),
    max_magic = max(unicorn_magic_left_skewed)
  )

print("🦄 Unicorn Magic Statistics:")
print(unicorn_stats)

# 💡 Key Learning: In left-skewed distributions, the mean is PULLED DOWN by the low values!

########################################################
# 🔥 Investigation 3: Phoenix Energy (Right-Skewed Distribution)
# Most phoenixes have low energy, but a few have extremely high energy - this creates a "tail" on the right

# Create histogram of phoenix energy
ggplot(creatures, aes(x = phoenix_energy_right_skewed)) +
  geom_histogram(bins = 15, fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "🔥 Phoenix Energy Distribution (Right-Skewed)", 
       x = "Phoenix Energy Level", 
       y = "Number of Phoenixes") +
  theme_minimal()

# Calculate statistics for phoenix energy
phoenix_stats <- creatures %>%
  summarise(
    mean_energy = mean(phoenix_energy_right_skewed),
    median_energy = median(phoenix_energy_right_skewed),
    min_energy = min(phoenix_energy_right_skewed),
    max_energy = max(phoenix_energy_right_skewed)
  )

print("🔥 Phoenix Energy Statistics:")
print(phoenix_stats)

# 💡 Key Learning: In right-skewed distributions, the mean is PULLED UP by the high values!

########################################################
# 🔍 The Great Comparison Challenge
# Let's compare all three distributions side by side!

# Combine all the statistics
all_stats <- data.frame(
  Creature = c("Dragon (Symmetrical)", "Unicorn (Left-Skewed)", "Phoenix (Right-Skewed)"),
  Mean = c(dragon_stats$mean_power, unicorn_stats$mean_magic, phoenix_stats$mean_energy),
  Median = c(dragon_stats$median_power, unicorn_stats$median_magic, phoenix_stats$median_energy),
  Difference = c(
    abs(dragon_stats$mean_power - dragon_stats$median_power),
    abs(unicorn_stats$mean_magic - unicorn_stats$median_magic),
    abs(phoenix_stats$mean_energy - phoenix_stats$median_energy)
  )
)

print("📊 The Great Statistics Comparison:")
print(all_stats)

# 💡 Mystery Question: Which creature type has the biggest difference between mean and median? Why?

########################################################
# ✨ Bonus Challenge: Find the Mode!
# The mode is the most common value. Let's create a simple function to find it.

find_mode <- function(x) {
  # Create a table of counts
  counts <- table(x)
  # Find the value(s) with the highest count
  mode_value <- as.numeric(names(counts[counts == max(counts)]))
  return(mode_value[1])  # Return the first mode if there are multiple
}

# Find modes for each creature type
dragon_mode <- find_mode(creatures$dragon_power_normal)
unicorn_mode <- find_mode(creatures$unicorn_magic_left_skewed)
phoenix_mode <- find_mode(creatures$phoenix_energy_right_skewed)

print("🎯 Mode Detective Results:")
print(paste("Dragon Power Mode:", dragon_mode))
print(paste("Unicorn Magic Mode:", unicorn_mode))
print(paste("Phoenix Energy Mode:", phoenix_mode))

########################################################
# 💡 Take-Home Messages:
# 1. Symmetrical distributions: Mean ≈ Median (they're close friends!)
# 2. Left-skewed distributions: Mean < Median (mean gets pulled down)
# 3. Right-skewed distributions: Mean > Median (mean gets pulled up)
# 4. When data is skewed, median is often a better measure of "typical" value
# 5. Mode tells us the most common value - super useful for categories!