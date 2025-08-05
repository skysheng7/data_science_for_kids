# 🔮 Day 4 - Spell 6: Building Confidence Intervals

# Let's learn how to build confidence intervals - our measure of uncertainty!
# This tells us how confident we are about our estimates

########################################################
# 🎈 Activity: Prepare Our Bootstrap Data
########################################################

# We'll use the bootstrap results from Spell 5
# If you don't have them, run Spell 5 first, or create quick bootstrap:

if (!exists("bootstrap_proportions")) {
  print("Creating bootstrap data for you...")
  
  # Quick setup (replace with your actual values if needed)
  total_candies <- 50
  strawberry_candies <- 20
  strawberry_proportion <- strawberry_candies / total_candies
  
  # Create sample and bootstrap
  set.seed(789)
  population <- rep(c("strawberry", "other"), 
                   times = c(strawberry_candies, total_candies - strawberry_candies))
  my_sample <- sample(population, 20, replace = FALSE)
  my_sample_proportion <- sum(my_sample == "strawberry") / 20
  
  # Generate bootstrap samples
  bootstrap_proportions <- c()
  for(i in 1:100) {
    bootstrap_sample <- sample(my_sample, 20, replace = TRUE)
    proportion <- sum(bootstrap_sample == "strawberry") / 20
    bootstrap_proportions[i] <- proportion
  }
}

print(paste("Using", length(bootstrap_proportions), "bootstrap samples"))

########################################################
# 🔮 Magic Spell: 95% Confidence Interval
########################################################

# 💡 What is a 95% Confidence Interval?
# Imagine we built 100 confidence intervals from 100 different samples
# About 95 of them would contain the true population value!

# Calculate the 95% confidence interval
ci_95_lower <- quantile(bootstrap_proportions, 0.025)  # Bottom 2.5%
ci_95_upper <- quantile(bootstrap_proportions, 0.975)  # Top 97.5%

print("=== 95% CONFIDENCE INTERVAL ===")
print(paste("Lower bound:", round(ci_95_lower, 3)))
print(paste("Upper bound:", round(ci_95_upper, 3)))
print(paste("We are 95% confident the true proportion is between", 
           round(ci_95_lower, 3), "and", round(ci_95_upper, 3)))

# Width of the interval
ci_width <- ci_95_upper - ci_95_lower
print(paste("Interval width:", round(ci_width, 3)))

########################################################
# 🔮 Magic Spell: Visualize the Confidence Interval
########################################################

library(ggplot2)

# Create the bootstrap histogram with confidence interval
bootstrap_data <- data.frame(proportions = bootstrap_proportions)

ggplot(bootstrap_data, aes(x = proportions)) +
  geom_histogram(bins = 10, fill = "lightblue", color = "darkblue", alpha = 0.7) +
  # Add confidence interval bounds
  geom_vline(xintercept = ci_95_lower, color = "red", size = 2) +
  geom_vline(xintercept = ci_95_upper, color = "red", size = 2) +
  # Add original sample proportion
  geom_vline(xintercept = my_sample_proportion, color = "black", size = 2, linetype = "dashed") +
  # Shade the confidence interval region
  geom_ribbon(data = data.frame(x = c(ci_95_lower, ci_95_upper)), 
              aes(x = x, ymin = 0, ymax = Inf), 
              alpha = 0.2, fill = "red", inherit.aes = FALSE) +
  labs(title = "95% Confidence Interval for Strawberry Proportion",
       x = "Proportion of Strawberry Candies",
       y = "Number of Bootstrap Samples") +
  theme_minimal() +
  theme(text = element_text(size = 14))

print("In the graph:")
print("🔴 Red lines = 95% confidence interval bounds")
print("⚫ Black dashed = Our original sample proportion")
print("🟦 Shaded area = Our confidence interval region")

########################################################
# ✨ Challenge: Different Confidence Levels!
########################################################

# Let's try different confidence levels
print("\n=== DIFFERENT CONFIDENCE LEVELS ===")

# 90% Confidence Interval (narrower)
ci_90_lower <- quantile(bootstrap_proportions, 0.05)   # Bottom 5%
ci_90_upper <- quantile(bootstrap_proportions, 0.95)   # Top 5%

# 99% Confidence Interval (wider)
ci_99_lower <- quantile(bootstrap_proportions, 0.005)  # Bottom 0.5%
ci_99_upper <- quantile(bootstrap_proportions, 0.995)  # Top 0.5%

print("Confidence Intervals Comparison:")
print(paste("90% CI: [", round(ci_90_lower, 3), ",", round(ci_90_upper, 3), "]"))
print(paste("95% CI: [", round(ci_95_lower, 3), ",", round(ci_95_upper, 3), "]"))
print(paste("99% CI: [", round(ci_99_lower, 3), ",", round(ci_99_upper, 3), "]"))

# Calculate widths
width_90 <- ci_90_upper - ci_90_lower
width_95 <- ci_95_upper - ci_95_lower
width_99 <- ci_99_upper - ci_99_lower

print("\nInterval Widths:")
print(paste("90% CI width:", round(width_90, 3)))
print(paste("95% CI width:", round(width_95, 3)))
print(paste("99% CI width:", round(width_99, 3)))

print("\n💡 Pattern: Higher confidence = Wider interval!")

########################################################
# 🔮 Magic Spell: Visual Comparison of Confidence Levels
########################################################

# Create a comparison plot
conf_levels <- data.frame(
  level = c("90%", "95%", "99%"),
  lower = c(ci_90_lower, ci_95_lower, ci_99_lower),
  upper = c(ci_90_upper, ci_95_upper, ci_99_upper),
  midpoint = c((ci_90_lower + ci_90_upper)/2, 
               (ci_95_lower + ci_95_upper)/2,
               (ci_99_lower + ci_99_upper)/2)
)

ggplot(conf_levels, aes(y = level)) +
  geom_segment(aes(x = lower, xend = upper, yend = level), 
               size = 3, color = "steelblue") +
  geom_point(aes(x = midpoint), size = 3, color = "darkred") +
  geom_vline(xintercept = my_sample_proportion, 
             linetype = "dashed", color = "black", size = 1) +
  labs(title = "Comparison of Different Confidence Levels",
       x = "Proportion of Strawberry Candies",
       y = "Confidence Level") +
  theme_minimal() +
  theme(text = element_text(size = 14))

########################################################
# 🔮 Magic Spell: Check if We "Captured" the Truth
########################################################

# If we know the true population proportion, let's check our intervals!
if (exists("strawberry_proportion")) {
  print("\n=== TRUTH CHECK ===")
  print(paste("True population proportion:", round(strawberry_proportion, 3)))
  
  # Check each confidence level
  truth_in_90 <- (strawberry_proportion >= ci_90_lower) & (strawberry_proportion <= ci_90_upper)
  truth_in_95 <- (strawberry_proportion >= ci_95_lower) & (strawberry_proportion <= ci_95_upper)
  truth_in_99 <- (strawberry_proportion >= ci_99_lower) & (strawberry_proportion <= ci_99_upper)
  
  print("Does each CI contain the true value?")
  print(paste("90% CI contains truth:", truth_in_90))
  print(paste("95% CI contains truth:", truth_in_95))
  print(paste("99% CI contains truth:", truth_in_99))
  
  if (truth_in_95) {
    print("✅ Our 95% CI successfully captured the truth!")
  } else {
    print("❌ Our 95% CI missed the truth (this happens ~5% of the time)")
  }
}

########################################################
# ✨ Super Challenge: Margin of Error
########################################################

# Calculate margin of error for 95% CI
margin_of_error <- (ci_95_upper - ci_95_lower) / 2
print(paste("\n=== MARGIN OF ERROR ==="))
print(paste("95% CI Margin of Error:", round(margin_of_error, 3)))

# Express as percentage
margin_percentage <- margin_of_error * 100
print(paste("That's about ±", round(margin_percentage, 1), "percentage points"))

# Sample estimate ± margin of error
print(paste("We can say: proportion =", round(my_sample_proportion, 3), 
           "±", round(margin_of_error, 3)))

########################################################
# 💡 Confidence Interval Interpretation Guide
########################################################

print("\n=== HOW TO INTERPRET CONFIDENCE INTERVALS ===")
print("✅ CORRECT: 'We are 95% confident the true proportion is between X and Y'")
print("✅ CORRECT: 'If we repeated this study 100 times, about 95 CIs would contain the truth'")
print("❌ WRONG: 'There's a 95% chance the true value is in this interval'")
print("❌ WRONG: 'The true value changes - sometimes it's in the interval, sometimes not'")

print("\n💡 Key Points:")
print("🎯 The confidence is about our METHOD, not any single interval")
print("📏 Wider intervals = more confident but less precise")
print("📊 Narrower intervals = less confident but more precise")
print("🔄 The true value is fixed; our interval either catches it or doesn't")

########################################################
# 💡 Real-World Applications
########################################################

print("\n=== REAL-WORLD USES ===")
print("🗳️ Election polls: 'Candidate A has 52% ± 3% support'")
print("💊 Medical trials: 'Treatment works for 85% ± 5% of patients'")
print("📊 Quality control: 'Defect rate is 2% ± 1%'")
print("🌡️ Climate science: 'Temperature will rise 1.5° ± 0.5°C'")
print("🎮 Gaming: 'Win rate is 68% ± 4%'")

print("\nMasterful work building confidence intervals! 🍬📊🎯")

########################################################
# 💡 Summary of Your Results
########################################################

print("\n=== YOUR FINAL RESULTS SUMMARY ===")
print(paste("Original sample proportion:", round(my_sample_proportion, 3)))
print(paste("95% Confidence Interval: [", round(ci_95_lower, 3), ",", round(ci_95_upper, 3), "]"))
print(paste("Margin of Error: ±", round(margin_of_error, 3)))
print("Interpretation: We are 95% confident the true strawberry proportion")
print(paste("is between", round(ci_95_lower, 3), "and", round(ci_95_upper, 3)))

print("\nCongratulations! You've mastered confidence intervals! 🎉🔮✨")