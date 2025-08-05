# 🔮 Day 4 - Spell 5: Candy Bootstrap Adventure

# Welcome to the magical world of bootstrapping!
# We'll learn the "time travel" sampling trick with replacement

########################################################
# 🎈 Activity: Prepare for Bootstrap Magic
########################################################

# Make sure you have your candy data from previous spells
# If not, enter them here:
# total_candies <- ...
# strawberry_candies <- ...

strawberry_proportion <- strawberry_candies / total_candies
print(paste("True population proportion:", round(strawberry_proportion, 3)))

########################################################
# 🔮 Magic Spell: Create One Sample (Your Actual Bag)
########################################################

# 💡 What's different about bootstrapping?
# Instead of taking samples from the population (which we don't have in real life),
# we take samples from our ONE sample (your actual candy bag)!

set.seed(789)  # Set seed for reproducible results

# Create our population (this represents the unknown true population)
population <- rep(c("strawberry", "other"), 
                 times = c(strawberry_candies, total_candies - strawberry_candies))

# Take ONE sample that represents your actual candy bag
my_sample_size <- min(20, total_candies)  # Sample of 20 or all candies if less
my_sample <- sample(population, my_sample_size, replace = FALSE)

# Calculate the proportion in YOUR sample
my_sample_strawberry <- sum(my_sample == "strawberry")
my_sample_proportion <- my_sample_strawberry / my_sample_size

print("=== YOUR ACTUAL SAMPLE ===")
print(paste("Sample size:", my_sample_size))
print(paste("Strawberry candies in sample:", my_sample_strawberry))
print(paste("Sample proportion:", round(my_sample_proportion, 3)))

########################################################
# 🎈 Physical Activity Connection
########################################################

print("\n🎈 This matches your physical activity!")
print("You took candies from your bag, recorded flavors, and put them back")
print("Now let's do this 100 times with R magic!")

########################################################
# 🔮 Magic Spell: Bootstrap Sampling (WITH Replacement!)
########################################################

# 💡 What is Bootstrap Sampling?
# Take samples FROM your sample, WITH replacement
# It's like photocopying your candies and sampling from the copies!

num_bootstraps <- 100
bootstrap_proportions <- c()
bootstrap_size <- my_sample_size

print(paste("Taking", num_bootstraps, "bootstrap samples..."))

for(i in 1:num_bootstraps) {
  # Sample WITH replacement (the magic part!)
  bootstrap_sample <- sample(my_sample, bootstrap_size, replace = TRUE)
  strawberry_count <- sum(bootstrap_sample == "strawberry")
  proportion <- strawberry_count / bootstrap_size
  bootstrap_proportions[i] <- proportion
}

print("Bootstrap sampling complete! ✨")

########################################################
# 🔮 Magic Spell: Analyze Bootstrap Results
########################################################

print("\n=== BOOTSTRAP RESULTS ===")

# Average of all bootstrap samples
bootstrap_average <- mean(bootstrap_proportions)
print(paste("Average bootstrap proportion:", round(bootstrap_average, 3)))
print(paste("Your original sample proportion:", round(my_sample_proportion, 3)))

# Variability in bootstrap samples
bootstrap_sd <- sd(bootstrap_proportions)
print(paste("Bootstrap standard deviation:", round(bootstrap_sd, 3)))

# Range of bootstrap results
bootstrap_min <- min(bootstrap_proportions)
bootstrap_max <- max(bootstrap_proportions)
print(paste("Lowest bootstrap proportion:", round(bootstrap_min, 3)))
print(paste("Highest bootstrap proportion:", round(bootstrap_max, 3)))

########################################################
# 🔮 Magic Spell: Visualize Bootstrap Distribution
########################################################

library(ggplot2)

# Create bootstrap histogram
bootstrap_data <- data.frame(proportions = bootstrap_proportions)

ggplot(bootstrap_data, aes(x = proportions)) +
  geom_histogram(bins = 10, fill = "lightgreen", color = "darkgreen", alpha = 0.7) +
  geom_vline(xintercept = my_sample_proportion, 
             color = "red", size = 2, linetype = "dashed") +
  geom_vline(xintercept = bootstrap_average, 
             color = "purple", size = 2, linetype = "dashed") +
  labs(title = "Bootstrap Distribution",
       subtitle = paste("Based on", num_bootstraps, "bootstrap samples"),
       x = "Proportion of Strawberry Candies",
       y = "Number of Bootstrap Samples") +
  theme_minimal() +
  theme(text = element_text(size = 14))

print("In the graph:")
print("🔴 Red line = Your original sample proportion")
print("🟣 Purple line = Average of bootstrap samples")

########################################################
# ✨ Challenge: Compare Bootstrap vs Sampling Distribution
########################################################

# Let's compare with the sampling distribution from Spell 4!
print("\n=== BOOTSTRAP vs SAMPLING COMPARISON ===")

# Quick sampling distribution for comparison
sample_proportions_quick <- c()
for(i in 1:100) {
  sample_i <- sample(population, my_sample_size, replace = FALSE)
  strawberry_count <- sum(sample_i == "strawberry")
  proportion <- strawberry_count / my_sample_size
  sample_proportions_quick[i] <- proportion
}

# Create comparison data
comparison_data <- data.frame(
  proportion = c(bootstrap_proportions, sample_proportions_quick),
  type = rep(c("Bootstrap", "Sampling"), each = 100)
)

# Side-by-side comparison
ggplot(comparison_data, aes(x = proportion, fill = type)) +
  geom_histogram(bins = 8, alpha = 0.7, position = "identity") +
  facet_wrap(~type, ncol = 2) +
  geom_vline(xintercept = strawberry_proportion, 
             color = "blue", size = 1.5, linetype = "dashed") +
  labs(title = "Bootstrap vs Sampling Distribution",
       x = "Proportion of Strawberry Candies",
       y = "Number of Samples") +
  theme_minimal() +
  theme(text = element_text(size = 14))

########################################################
# 🔮 Magic Spell: Bootstrap Confidence Interval Preview
########################################################

# Calculate a simple confidence interval
ci_lower <- quantile(bootstrap_proportions, 0.025)  # Bottom 2.5%
ci_upper <- quantile(bootstrap_proportions, 0.975)  # Top 97.5%

print("\n=== BOOTSTRAP CONFIDENCE INTERVAL ===")
print(paste("95% Confidence Interval: [", round(ci_lower, 3), ",", round(ci_upper, 3), "]"))

# Check if true proportion falls in our interval
true_in_ci <- (strawberry_proportion >= ci_lower) & (strawberry_proportion <= ci_upper)
print(paste("Does our CI contain the true proportion?", true_in_ci))

########################################################
# 💡 The Bootstrap Magic Revealed!
########################################################

print("\n=== THE BOOTSTRAP MAGIC ===")
print("🔮 Bootstrap lets us estimate uncertainty with just ONE sample!")
print("📊 It approximates what we'd get if we had many samples")
print("🎯 Bootstrap average centers around our original sample")
print("📏 Bootstrap spread tells us how uncertain we are")
print("⚡ This works even when we don't know the true population!")

# Key insight
bootstrap_bias <- abs(bootstrap_average - my_sample_proportion)
if(bootstrap_bias < 0.02) {
  print("✅ Bootstrap average is very close to our original sample!")
} else {
  print("📝 Bootstrap average differs slightly - this can happen with small samples")
}

########################################################
# 💡 Why Bootstrap is Revolutionary
########################################################

print("\n💡 Why is bootstrap amazing?")
print("🌟 Works with just one sample (real-world situation)")
print("🔬 No need to know the true population")
print("📊 Gives us confidence intervals and uncertainty measures")
print("🎲 Used everywhere: medicine, economics, sports, gaming!")

print("\nIncredible work mastering bootstrap magic! 🍬🔮✨")