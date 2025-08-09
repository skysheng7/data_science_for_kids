# 🔮 Day 4: Statistics Ocean - Spell Solutions

## Spell 1: Distribution Detective Investigation Solutions

### 🐉 Dragon Power Analysis (Symmetrical Distribution)

```R
# Load libraries
library(ggplot2)
library(dplyr)

# Load our magical creature dataset
creatures <- read.csv("datasets/magical_creatures_stats.csv")

# Dragon Power Histogram
ggplot(creatures, aes(x = dragon_power_normal)) +
  geom_histogram(bins = 15, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "🐉 Dragon Power Distribution (Symmetrical)", 
       x = "Dragon Power Level", 
       y = "Number of Dragons") +
  theme_minimal()

# Calculate dragon statistics
dragon_stats <- creatures %>%
  summarise(
    mean_power = mean(dragon_power_normal),
    median_power = median(dragon_power_normal),
    min_power = min(dragon_power_normal),
    max_power = max(dragon_power_normal)
  )

print(dragon_stats)
```

**Expected Output:**
```R
# A tibble: 1 × 4
  mean_power median_power min_power max_power
       <dbl>        <dbl>     <dbl>     <dbl>
1       87.7         88.0      77.0      96.0
```

### 🦄 Unicorn Magic Analysis (Left-Skewed Distribution)

```R
# Unicorn Magic Histogram
ggplot(creatures, aes(x = unicorn_magic_left_skewed)) +
  geom_histogram(bins = 15, fill = "purple", color = "black", alpha = 0.7) +
  labs(title = "🦄 Unicorn Magic Distribution (Left-Skewed)", 
       x = "Unicorn Magic Level", 
       y = "Number of Unicorns") +
  theme_minimal()

# Calculate unicorn statistics
unicorn_stats <- creatures %>%
  summarise(
    mean_magic = mean(unicorn_magic_left_skewed),
    median_magic = median(unicorn_magic_left_skewed),
    min_magic = min(unicorn_magic_left_skewed),
    max_magic = max(unicorn_magic_left_skewed)
  )

print(unicorn_stats)
```

**Expected Output:**
```R
# A tibble: 1 × 4
  mean_magic median_magic min_magic max_magic
       <dbl>        <dbl>     <dbl>     <dbl>
1       45.4         45.5      35.0      55.0
```

### 🔥 Phoenix Energy Analysis (Right-Skewed Distribution)

```R
# Phoenix Energy Histogram
ggplot(creatures, aes(x = phoenix_energy_right_skewed)) +
  geom_histogram(bins = 15, fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "🔥 Phoenix Energy Distribution (Right-Skewed)", 
       x = "Phoenix Energy Level", 
       y = "Number of Phoenixes") +
  theme_minimal()

# Calculate phoenix statistics
phoenix_stats <- creatures %>%
  summarise(
    mean_energy = mean(phoenix_energy_right_skewed),
    median_energy = median(phoenix_energy_right_skewed),
    min_energy = min(phoenix_energy_right_skewed),
    max_energy = max(phoenix_energy_right_skewed)
  )

print(phoenix_stats)
```

**Expected Output:**
```R
# A tibble: 1 × 4
  mean_energy median_energy min_energy max_energy
        <dbl>         <dbl>      <dbl>      <dbl>
1        14.5          13.0       6.00       27.0
```

### 🔍 The Great Comparison Challenge Solution

```R
# Combined statistics comparison
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

print(all_stats)
```

**Expected Output:**
```R
                 Creature Mean Median Difference
1    Dragon (Symmetrical) 87.7   88.0       0.30
2   Unicorn (Left-Skewed) 45.4   45.5       0.10
3 Phoenix (Right-Skewed) 14.5   13.0       1.50
```

### ✨ Mode Calculation Solution

```R
# Function to find mode
find_mode <- function(x) {
  counts <- table(x)
  mode_value <- as.numeric(names(counts[counts == max(counts)]))
  return(mode_value[1])
}

# Calculate modes
dragon_mode <- find_mode(creatures$dragon_power_normal)
unicorn_mode <- find_mode(creatures$unicorn_magic_left_skewed)
phoenix_mode <- find_mode(creatures$phoenix_energy_right_skewed)

print(paste("Dragon Power Mode:", dragon_mode))
print(paste("Unicorn Magic Mode:", unicorn_mode))
print(paste("Phoenix Energy Mode:", phoenix_mode))
```

**Expected Output:**
```R
[1] "Dragon Power Mode: 82"
[1] "Unicorn Magic Mode: 35"
[1] "Phoenix Energy Mode: 6"
```

### 🎯 Detective Challenge Answers

1. **Which creature type has mean and median closest together?**
   - **Answer:** Dragons (symmetrical distribution) - difference of only 0.30

2. **Which creature type shows the biggest difference between mean and median?**
   - **Answer:** Phoenix (right-skewed distribution) - difference of 1.50

3. **When data is skewed, which is better to use: mean or median?**
   - **Answer:** Median is often better because it's not affected by extreme values

---

## Spell 2: Digital Sampling Magic Solutions

### 🐉 Population Creation

```R
library(ggplot2)
library(dplyr)
set.seed(123)

# Create population of 1000 creatures (30% dragons)
population <- data.frame(
  creature_id = 1:1000,
  creature_type = c(rep("dragon", 300), rep("other", 700))
)

# Verify true proportion
true_dragon_proportion <- sum(population$creature_type == "dragon") / nrow(population)
print(paste("True proportion of dragons:", true_dragon_proportion))
```

**Expected Output:**
```R
[1] "True proportion of dragons: 0.3"
```

### 🎣 Small Samples (Size 10) Solutions

```R
# Function to take random sample
take_sample <- function(population, sample_size) {
  sample_data <- population[sample(nrow(population), sample_size), ]
  dragon_count <- sum(sample_data$creature_type == "dragon")
  proportion <- dragon_count / sample_size
  return(proportion)
}

# Take 100 samples of size 10
sample_proportions_10 <- replicate(100, take_sample(population, 10))

# Calculate statistics
mean_proportion_10 <- mean(sample_proportions_10)
sd_proportion_10 <- sd(sample_proportions_10)

print(paste("Average of sample proportions (size 10):", round(mean_proportion_10, 3)))
print(paste("Spread (standard deviation):", round(sd_proportion_10, 3)))
```

**Expected Output:**
```R
[1] "Average of sample proportions (size 10): 0.299"
[1] "Spread (standard deviation): 0.143"
```

### 🎣 Medium Samples (Size 50) Solutions

```R
# Take 100 samples of size 50
sample_proportions_50 <- replicate(100, take_sample(population, 50))

mean_proportion_50 <- mean(sample_proportions_50)
sd_proportion_50 <- sd(sample_proportions_50)

print(paste("Average of sample proportions (size 50):", round(mean_proportion_50, 3)))
print(paste("Spread (standard deviation):", round(sd_proportion_50, 3)))
```

**Expected Output:**
```R
[1] "Average of sample proportions (size 50): 0.301"
[1] "Spread (standard deviation): 0.064"
```

### 🎣 Large Samples (Size 100) Solutions

```R
# Take 100 samples of size 100
sample_proportions_100 <- replicate(100, take_sample(population, 100))

mean_proportion_100 <- mean(sample_proportions_100)
sd_proportion_100 <- sd(sample_proportions_100)

print(paste("Average of sample proportions (size 100):", round(mean_proportion_100, 3)))
print(paste("Spread (standard deviation):", round(sd_proportion_100, 3)))
```

**Expected Output:**
```R
[1] "Average of sample proportions (size 100): 0.300"
[1] "Spread (standard deviation): 0.046"
```

### 📊 Summary Comparison Table

```R
summary_table <- data.frame(
  Sample_Size = c(10, 50, 100),
  Average_Proportion = c(mean_proportion_10, mean_proportion_50, mean_proportion_100),
  Spread_SD = c(sd_proportion_10, sd_proportion_50, sd_proportion_100),
  True_Proportion = rep(true_dragon_proportion, 3)
)

print("Summary of All Experiments:")
print(round(summary_table, 3))
```

**Expected Output:**
```R
[1] "Summary of All Experiments:"
  Sample_Size Average_Proportion Spread_SD True_Proportion
1          10              0.299     0.143             0.3
2          50              0.301     0.064             0.3
3         100              0.300     0.046             0.3
```

### 🎯 Key Observations from Results:

1. **All sample sizes give averages close to 0.30** - This demonstrates the Law of Large Numbers
2. **Larger samples have smaller standard deviations** - This shows decreased sampling variability
3. **Sample Size 10: SD ≈ 0.143** - High variability
4. **Sample Size 50: SD ≈ 0.064** - Medium variability  
5. **Sample Size 100: SD ≈ 0.046** - Low variability

### 💡 Key Takeaways:
- Increasing sample size doesn't change the average estimate
- Increasing sample size dramatically reduces the variability of estimates
- This is why pollsters use large samples - not to change the answer, but to make it more reliable!