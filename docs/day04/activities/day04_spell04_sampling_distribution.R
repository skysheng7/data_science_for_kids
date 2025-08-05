# 🔮 Day 4 - Spell 4: Many Samples Adventure

# What happens when we take LOTS of samples?
# Let's explore the magical world of sampling distributions!

########################################################
# 🎈 Activity: Recall Your Candy Data
########################################################

# Make sure you have your candy data from Spell 3
# If not, enter them here:
# total_candies <- ...
# strawberry_candies <- ...

strawberry_proportion <- strawberry_candies / total_candies
print(paste("True population proportion:", round(strawberry_proportion, 3)))

# Recreate our population
set.seed(456)  # Different seed for variety
population <- rep(c("strawberry", "other"), 
                 times = c(strawberry_candies, total_candies - strawberry_candies))

########################################################
# 🔮 Magic Spell: Take 100 Samples!
########################################################

# 💡 What's a Sampling Distribution?
# It's the pattern we see when we take MANY samples
# Like taking 100 photos of the same thing - each photo is slightly different!

num_samples <- 100
sample_size <- 10
sample_proportions <- c()

print("Taking 100 samples... This might take a moment! ⏳")

# Take 100 samples and calculate proportion for each
for(i in 1:num_samples) {
  sample_i <- sample(population, sample_size, replace = FALSE)
  strawberry_count <- sum(sample_i == "strawberry")
  proportion <- strawberry_count / sample_size
  sample_proportions[i] <- proportion
}

print(paste("Finished taking", num_samples, "samples!"))

########################################################
# 🔮 Magic Spell: Analyze the Results
########################################################

# Let's see what we discovered!
print("=== SAMPLING DISTRIBUTION RESULTS ===")

# Average of all samples
average_proportion <- mean(sample_proportions)
print(paste("Average of all samples:", round(average_proportion, 3)))
print(paste("True population value:", round(strawberry_proportion, 3)))

# How much do the samples vary?
sample_sd <- sd(sample_proportions)
print(paste("Standard deviation of samples:", round(sample_sd, 3)))

# Range of sample results
sample_min <- min(sample_proportions)
sample_max <- max(sample_proportions)
print(paste("Lowest sample proportion:", round(sample_min, 3)))
print(paste("Highest sample proportion:", round(sample_max, 3)))

########################################################
# 🔮 Magic Spell: Visualize the Sampling Distribution
########################################################

library(ggplot2)

# Create a data frame for plotting
sample_data <- data.frame(proportions = sample_proportions)

# Create histogram of all sample proportions
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

# Add legend manually
print("In the graph:")
print("🔵 Blue line = True population proportion")
print("🟢 Green line = Average of all samples")

########################################################
# ✨ Challenge: Different Sample Sizes
########################################################

# Let's see what happens with larger samples!
print("\n=== COMPARING DIFFERENT SAMPLE SIZES ===")

sample_sizes <- c(5, 10, 20)
results_by_size <- list()

for(size in sample_sizes) {
  if(size <= total_candies) {
    # Take 50 samples of this size
    size_proportions <- c()
    
    for(i in 1:50) {
      sample_i <- sample(population, size, replace = FALSE)
      strawberry_count <- sum(sample_i == "strawberry")
      proportion <- strawberry_count / size
      size_proportions[i] <- proportion
    }
    
    results_by_size[[paste("Size", size)]] <- size_proportions
    
    # Calculate variability for this sample size
    size_sd <- sd(size_proportions)
    print(paste("Sample size", size, "- Standard deviation:", round(size_sd, 3)))
  }
}

########################################################
# 🔮 Magic Spell: Compare Sample Size Effects
########################################################

# Create a combined data frame for comparison
if(length(results_by_size) >= 2) {
  comparison_data <- data.frame(
    proportion = c(results_by_size[[1]], results_by_size[[2]]),
    sample_size = rep(c(names(results_by_size)[1], names(results_by_size)[2]), 
                     each = 50)
  )
  
  # Create side-by-side histograms
  ggplot(comparison_data, aes(x = proportion, fill = sample_size)) +
    geom_histogram(bins = 8, alpha = 0.7, position = "identity") +
    facet_wrap(~sample_size, ncol = 2) +
    geom_vline(xintercept = strawberry_proportion, 
               color = "blue", size = 1.5, linetype = "dashed") +
    labs(title = "Effect of Sample Size on Sampling Distribution",
         x = "Proportion of Strawberry Candies",
         y = "Number of Samples") +
    theme_minimal() +
    theme(text = element_text(size = 14))
}

########################################################
# 💡 The Big Discoveries!
########################################################

print("\n=== THE BIG DISCOVERIES ===")
print("🎯 The average of many samples equals the true population value!")
print("📊 Individual samples vary, but the pattern is predictable")
print("📏 Larger samples have less variability (more consistent)")
print("🔮 This pattern is called the 'sampling distribution'")

# Check if our average is close to the true value
difference <- abs(average_proportion - strawberry_proportion)
if(difference < 0.05) {
  print("✅ Our sampling distribution average is very close to truth!")
} else {
  print("📝 Our sampling distribution average differs from truth - this can happen!")
}

########################################################
# 💡 Why This Matters
########################################################

print("\n💡 Why is this important?")
print("🔬 Scientists use this to understand how reliable their results are")
print("📊 Pollsters use this to predict election results")
print("🍬 Quality control uses this to test products")
print("📈 This is the foundation of all statistical inference!")

print("\nFantastic work exploring sampling distributions! 🍬📊✨")