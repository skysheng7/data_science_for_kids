# Day 4 - Statistics Ocean: Solutions

This file contains complete solutions for all Day 4 spells about central tendency, sampling, and bootstrapping.

## Spell 1: Measuring Magic Cows - Solutions

### Example Data Entry
```r
# Example cow heights (in centimeters)
cow_heights <- c(12.5, 15.2, 13.8, 14.1, 16.0, 12.9, 15.5, 13.2, 14.7, 15.8)

print("Our cow heights:")
print(cow_heights)
```

**Expected Output:**
```r
[1] "Our cow heights:"
[1] 12.5 15.2 13.8 14.1 16.0 12.9 15.5 13.2 14.7 15.8
```

### Calculate Mean (Average)
```r
mean_height <- mean(cow_heights)
print(paste("Mean height:", round(mean_height, 2), "cm"))
```

**Expected Output:**
```r
[1] "Mean height: 14.37 cm"
```

### Calculate Median (Middle Value)
```r
median_height <- median(cow_heights)
print(paste("Median height:", median_height, "cm"))
```

**Expected Output:**
```r
[1] "Median height: 14.4 cm"
```

### Find Mode (Most Common Height)
```r
get_mode <- function(data) {
  freq_table <- table(data)
  mode_value <- names(freq_table)[which.max(freq_table)]
  return(as.numeric(mode_value))
}

mode_height <- get_mode(cow_heights)
print(paste("Mode height:", mode_height, "cm"))
```

**Expected Output:**
```r
[1] "Mode height: 12.5 cm"
```
*Note: If all values are unique, R will return the first value. This is normal!*

### Compare All Three Centers
```r
print("=== SUMMARY OF COW HEIGHTS ===")
print(paste("Mean (average):", round(mean_height, 2), "cm"))
print(paste("Median (middle):", median_height, "cm"))
print(paste("Mode (most common):", mode_height, "cm"))
```

**Expected Output:**
```r
[1] "=== SUMMARY OF COW HEIGHTS ==="
[1] "Mean (average): 14.37 cm"
[1] "Median (middle): 14.4 cm"
[1] "Mode (most common): 12.5 cm"
```

### Challenge: Which Cow is Closest to Each Center?
```r
closest_to_mean <- which.min(abs(cow_heights - mean_height))
print(paste("Cow #", closest_to_mean, "is closest to the mean"))

closest_to_median <- which.min(abs(cow_heights - median_height))
print(paste("Cow #", closest_to_median, "is closest to the median"))
```

**Expected Output:**
```r
[1] "Cow #4 is closest to the mean"
[1] "Cow #9 is closest to the median"
```

---

## Spell 2: Cow Height Spread - Solutions

### Calculate Standard Deviation
```r
cow_heights <- c(12.5, 15.2, 13.8, 14.1, 16.0, 12.9, 15.5, 13.2, 14.7, 15.8)

std_dev <- sd(cow_heights)
print(paste("Standard deviation:", round(std_dev, 2), "cm"))

if (std_dev < 2) {
  print("Your cows are quite similar in height! 👫")
} else if (std_dev < 5) {
  print("Your cows have medium variation in height! 📏")
} else {
  print("Your cows are very different heights! 🐄👶🦣")
}
```

**Expected Output:**
```r
[1] "Standard deviation: 1.36 cm"
[1] "Your cows are quite similar in height! 👫"
```

### Calculate Range
```r
range_value <- max(cow_heights) - min(cow_heights)
print(paste("Range:", range_value, "cm"))
print(paste("Tallest cow:", max(cow_heights), "cm"))
print(paste("Shortest cow:", min(cow_heights), "cm"))
```

**Expected Output:**
```r
[1] "Range: 3.5 cm"
[1] "Tallest cow: 16 cm"
[1] "Shortest cow: 12.5 cm"
```

### Histogram Creation
```r
library(ggplot2)

cow_data <- data.frame(heights = cow_heights)

ggplot(cow_data, aes(x = heights)) +
  geom_histogram(bins = 5, fill = "skyblue", color = "black") +
  labs(title = "Heights of Our Magic Cows", 
       x = "Height (cm)", 
       y = "Number of Cows") +
  theme_minimal() +
  theme(text = element_text(size = 14))
```

This creates a histogram showing the distribution of cow heights.

### Quartiles Calculation
```r
quartiles <- quantile(cow_heights)
print("Quartiles (4 equal parts):")
print(quartiles)

q1 <- quartiles[2]  # 25th percentile
q3 <- quartiles[4]  # 75th percentile
iqr <- q3 - q1      # Interquartile Range

print(paste("Middle 50% of cows are between", q1, "and", q3, "cm"))
print(paste("Interquartile Range (IQR):", iqr, "cm"))
```

**Expected Output:**
```r
[1] "Quartiles (4 equal parts):"
    0%    25%    50%    75%   100% 
12.500 13.375 14.400 15.375 16.000 
[1] "Middle 50% of cows are between 13.375 and 15.375 cm"
[1] "Interquartile Range (IQR): 2 cm"
```

---

## Spell 3: Candy Bag Sampling - Solutions

### Example Data Entry
```r
total_candies <- 48
strawberry_candies <- 12

print(paste("Total candies in our bag:", total_candies))
print(paste("Strawberry candies:", strawberry_candies))
```

**Expected Output:**
```r
[1] "Total candies in our bag: 48"
[1] "Strawberry candies: 12"
```

### Calculate Proportion
```r
strawberry_proportion <- strawberry_candies / total_candies
print(paste("Proportion of strawberry candies:", round(strawberry_proportion, 3)))

strawberry_percentage <- strawberry_proportion * 100
print(paste("That's", round(strawberry_percentage, 1), "% strawberry candies!"))
```

**Expected Output:**
```r
[1] "Proportion of strawberry candies: 0.25"
[1] "That's 25.0 % strawberry candies!"
```

### Create Population and Take Samples
```r
set.seed(123)
population <- rep(c("strawberry", "other"), 
                 times = c(strawberry_candies, total_candies - strawberry_candies))

sample_size <- 10
sample1 <- sample(population, sample_size, replace = FALSE)

sample1_strawberry <- sum(sample1 == "strawberry")
sample1_proportion <- sample1_strawberry / sample_size

print("=== SAMPLE 1 RESULTS ===")
print(paste("Strawberry candies in sample:", sample1_strawberry))
print(paste("Sample proportion:", round(sample1_proportion, 3)))
print(paste("True population proportion:", round(strawberry_proportion, 3)))
```

**Expected Output:**
```r
[1] "=== SAMPLE 1 RESULTS ==="
[1] "Strawberry candies in sample: 3"
[1] "Sample proportion: 0.3"
[1] "True population proportion: 0.25"
```

### Multiple Samples Challenge
```r
print("\n=== TAKING 5 SAMPLES ===")
sample_results <- c()

for(i in 1:5) {
  sample_i <- sample(population, sample_size, replace = FALSE)
  strawberry_count <- sum(sample_i == "strawberry")
  proportion <- strawberry_count / sample_size
  sample_results[i] <- proportion
  print(paste("Sample", i, "- Strawberry candies:", strawberry_count, 
              "- Proportion:", round(proportion, 3)))
}

print("\nAll sample proportions:")
print(round(sample_results, 3))
```

**Expected Output (will vary due to randomness):**
```r
[1] "=== TAKING 5 SAMPLES ==="
[1] "Sample 1 - Strawberry candies: 3 - Proportion: 0.3"
[1] "Sample 2 - Strawberry candies: 2 - Proportion: 0.2"
[1] "Sample 3 - Strawberry candies: 4 - Proportion: 0.4"
[1] "Sample 4 - Strawberry candies: 1 - Proportion: 0.1"
[1] "Sample 5 - Strawberry candies: 3 - Proportion: 0.3"
[1] "All sample proportions:"
[1] 0.3 0.2 0.4 0.1 0.3
```

---

## Spell 4: Many Samples Adventure - Solutions

### Taking 100 Samples
```r
set.seed(456)
num_samples <- 100
sample_size <- 10
sample_proportions <- c()

for(i in 1:num_samples) {
  sample_i <- sample(population, sample_size, replace = FALSE)
  strawberry_count <- sum(sample_i == "strawberry")
  proportion <- strawberry_count / sample_size
  sample_proportions[i] <- proportion
}

print(paste("Finished taking", num_samples, "samples!"))
```

### Analyze Results
```r
average_proportion <- mean(sample_proportions)
print(paste("Average of all samples:", round(average_proportion, 3)))
print(paste("True population value:", round(strawberry_proportion, 3)))

sample_sd <- sd(sample_proportions)
print(paste("Standard deviation of samples:", round(sample_sd, 3)))

sample_min <- min(sample_proportions)
sample_max <- max(sample_proportions)
print(paste("Lowest sample proportion:", round(sample_min, 3)))
print(paste("Highest sample proportion:", round(sample_max, 3)))
```

**Expected Output:**
```r
[1] "Average of all samples: 0.248"
[1] "True population value: 0.25"
[1] "Standard deviation of samples: 0.137"
[1] "Lowest sample proportion: 0"
[1] "Highest sample proportion: 0.6"
```

### Create Sampling Distribution Histogram
```r
library(ggplot2)

sample_data <- data.frame(proportions = sample_proportions)

ggplot(sample_data, aes(x = proportions)) +
  geom_histogram(bins = 10, fill = "pink", color = "darkred", alpha = 0.7) +
  geom_vline(xintercept = strawberry_proportion, 
             color = "blue", size = 2, linetype = "dashed") +
  geom_vline(xintercept = average_proportion, 
             color = "green", size = 2, linetype = "dashed") +
  labs(title = "Sampling Distribution of Strawberry Proportions",
       subtitle = paste("Based on", num_samples, "samples of size", sample_size),
       x = "Proportion of Strawberry Candies",
       y = "Number of Samples") +
  theme_minimal() +
  theme(text = element_text(size = 14))
```

This creates a histogram showing the distribution of sample proportions with blue line (true value) and green line (sample average).

---

## Spell 5: Candy Bootstrap Adventure - Solutions

### Create Sample and Bootstrap
```r
set.seed(789)
my_sample_size <- min(20, total_candies)
my_sample <- sample(population, my_sample_size, replace = FALSE)

my_sample_strawberry <- sum(my_sample == "strawberry")
my_sample_proportion <- my_sample_strawberry / my_sample_size

print("=== YOUR ACTUAL SAMPLE ===")
print(paste("Sample size:", my_sample_size))
print(paste("Strawberry candies in sample:", my_sample_strawberry))
print(paste("Sample proportion:", round(my_sample_proportion, 3)))
```

**Expected Output:**
```r
[1] "=== YOUR ACTUAL SAMPLE ==="
[1] "Sample size: 20"
[1] "Strawberry candies in sample: 6"
[1] "Sample proportion: 0.3"
```

### Bootstrap Sampling
```r
num_bootstraps <- 100
bootstrap_proportions <- c()
bootstrap_size <- my_sample_size

for(i in 1:num_bootstraps) {
  bootstrap_sample <- sample(my_sample, bootstrap_size, replace = TRUE)
  strawberry_count <- sum(bootstrap_sample == "strawberry")
  proportion <- strawberry_count / bootstrap_size
  bootstrap_proportions[i] <- proportion
}

print("Bootstrap sampling complete! ✨")
```

### Analyze Bootstrap Results
```r
bootstrap_average <- mean(bootstrap_proportions)
print(paste("Average bootstrap proportion:", round(bootstrap_average, 3)))
print(paste("Your original sample proportion:", round(my_sample_proportion, 3)))

bootstrap_sd <- sd(bootstrap_proportions)
print(paste("Bootstrap standard deviation:", round(bootstrap_sd, 3)))

bootstrap_min <- min(bootstrap_proportions)
bootstrap_max <- max(bootstrap_proportions)
print(paste("Lowest bootstrap proportion:", round(bootstrap_min, 3)))
print(paste("Highest bootstrap proportion:", round(bootstrap_max, 3)))
```

**Expected Output:**
```r
[1] "Average bootstrap proportion: 0.299"
[1] "Your original sample proportion: 0.3"
[1] "Bootstrap standard deviation: 0.102"
[1] "Lowest bootstrap proportion: 0.05"
[1] "Highest bootstrap proportion: 0.55"
```

### Bootstrap Confidence Interval
```r
ci_lower <- quantile(bootstrap_proportions, 0.025)
ci_upper <- quantile(bootstrap_proportions, 0.975)

print("\n=== BOOTSTRAP CONFIDENCE INTERVAL ===")
print(paste("95% Confidence Interval: [", round(ci_lower, 3), ",", round(ci_upper, 3), "]"))

true_in_ci <- (strawberry_proportion >= ci_lower) & (strawberry_proportion <= ci_upper)
print(paste("Does our CI contain the true proportion?", true_in_ci))
```

**Expected Output:**
```r
[1] "95% Confidence Interval: [ 0.1 , 0.5 ]"
[1] "Does our CI contain the true proportion? TRUE"
```

---

## Spell 6: Building Confidence Intervals - Solutions

### 95% Confidence Interval
```r
ci_95_lower <- quantile(bootstrap_proportions, 0.025)
ci_95_upper <- quantile(bootstrap_proportions, 0.975)

print("=== 95% CONFIDENCE INTERVAL ===")
print(paste("Lower bound:", round(ci_95_lower, 3)))
print(paste("Upper bound:", round(ci_95_upper, 3)))
print(paste("We are 95% confident the true proportion is between", 
           round(ci_95_lower, 3), "and", round(ci_95_upper, 3)))

ci_width <- ci_95_upper - ci_95_lower
print(paste("Interval width:", round(ci_width, 3)))
```

**Expected Output:**
```r
[1] "=== 95% CONFIDENCE INTERVAL ==="
[1] "Lower bound: 0.1"
[1] "Upper bound: 0.5"
[1] "We are 95% confident the true proportion is between 0.1 and 0.5"
[1] "Interval width: 0.4"
```

### Different Confidence Levels
```r
ci_90_lower <- quantile(bootstrap_proportions, 0.05)
ci_90_upper <- quantile(bootstrap_proportions, 0.95)

ci_99_lower <- quantile(bootstrap_proportions, 0.005)
ci_99_upper <- quantile(bootstrap_proportions, 0.995)

print("Confidence Intervals Comparison:")
print(paste("90% CI: [", round(ci_90_lower, 3), ",", round(ci_90_upper, 3), "]"))
print(paste("95% CI: [", round(ci_95_lower, 3), ",", round(ci_95_upper, 3), "]"))
print(paste("99% CI: [", round(ci_99_lower, 3), ",", round(ci_99_upper, 3), "]"))

width_90 <- ci_90_upper - ci_90_lower
width_95 <- ci_95_upper - ci_95_lower
width_99 <- ci_99_upper - ci_99_lower

print("\nInterval Widths:")
print(paste("90% CI width:", round(width_90, 3)))
print(paste("95% CI width:", round(width_95, 3)))
print(paste("99% CI width:", round(width_99, 3)))
```

**Expected Output:**
```r
[1] "Confidence Intervals Comparison:"
[1] "90% CI: [ 0.15 , 0.45 ]"
[1] "95% CI: [ 0.1 , 0.5 ]"
[1] "99% CI: [ 0.05 , 0.55 ]"
[1] "Interval Widths:"
[1] "90% CI width: 0.3"
[1] "95% CI width: 0.4"
[1] "99% CI width: 0.5"
```

### Margin of Error
```r
margin_of_error <- (ci_95_upper - ci_95_lower) / 2
print(paste("95% CI Margin of Error:", round(margin_of_error, 3)))

margin_percentage <- margin_of_error * 100
print(paste("That's about ±", round(margin_percentage, 1), "percentage points"))

print(paste("We can say: proportion =", round(my_sample_proportion, 3), 
           "±", round(margin_of_error, 3)))
```

**Expected Output:**
```r
[1] "95% CI Margin of Error: 0.2"
[1] "That's about ± 20.0 percentage points"
[1] "We can say: proportion = 0.3 ± 0.2"
```

### Final Results Summary
```r
print("\n=== YOUR FINAL RESULTS SUMMARY ===")
print(paste("Original sample proportion:", round(my_sample_proportion, 3)))
print(paste("95% Confidence Interval: [", round(ci_95_lower, 3), ",", round(ci_95_upper, 3), "]"))
print(paste("Margin of Error: ±", round(margin_of_error, 3)))
print("Interpretation: We are 95% confident the true strawberry proportion")
print(paste("is between", round(ci_95_lower, 3), "and", round(ci_95_upper, 3)))
```

**Expected Output:**
```r
[1] "=== YOUR FINAL RESULTS SUMMARY ==="
[1] "Original sample proportion: 0.3"
[1] "95% Confidence Interval: [ 0.1 , 0.5 ]"
[1] "Margin of Error: ± 0.2"
[1] "Interpretation: We are 95% confident the true strawberry proportion"
[1] "is between 0.1 and 0.5"
```

## Key Learning Points

### Central Tendency
- **Mean**: Average value (sum ÷ count)
- **Median**: Middle value when data is sorted
- **Mode**: Most frequently occurring value
- **Standard Deviation**: Measure of spread/variability

### Sampling Concepts
- **Population**: All items we want to study
- **Sample**: Subset we actually measure
- **Sampling Variability**: Samples give different results
- **Sampling Distribution**: Pattern from many samples

### Bootstrap Magic
- **Bootstrap Sample**: Sample WITH replacement from original data
- **Bootstrap Distribution**: Approximates sampling distribution
- **Key Insight**: One sample can tell us about uncertainty

### Confidence Intervals
- **95% CI**: We're 95% confident true value is in this range
- **Interpretation**: Our method captures truth 95% of the time
- **Trade-off**: Higher confidence = wider intervals

Remember: In statistics, variability is normal and expected! The goal is to understand and quantify that variability.