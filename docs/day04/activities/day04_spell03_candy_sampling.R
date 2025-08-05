# 🔮 Day 4 - Spell 3: Candy Bag Sampling

# Welcome to the Great Strawberry Candy Investigation!
# We'll learn about populations, samples, and sampling variability

########################################################
# 🎈 Activity: Enter Your Candy Data
########################################################

# Step 1: Count ALL candies in your bag
total_candies <- ...  # Enter the total number here

# Step 2: Count only the STRAWBERRY candies
strawberry_candies <- ...  # Enter the strawberry count here

print(paste("Total candies in our bag:", total_candies))
print(paste("Strawberry candies:", strawberry_candies))

########################################################
# 🔮 Magic Spell: Calculate Proportion
########################################################

# 💡 What is a Proportion?
# Proportion = part / whole
# Like: how many students wear glasses out of your whole class?

strawberry_proportion <- strawberry_candies / total_candies
print(paste("Proportion of strawberry candies:", round(strawberry_proportion, 3)))

# Convert to percentage for easier understanding
strawberry_percentage <- strawberry_proportion * 100
print(paste("That's", round(strawberry_percentage, 1), "% strawberry candies!"))

########################################################
# 🔮 Magic Spell: Create Our Virtual Population
########################################################

# 💡 What's happening here?
# We're pretending your candy bag represents ALL the candies in the world
# Now we'll take smaller samples from it to see what happens!

set.seed(123)  # This makes our random results the same each time

# Create our "population" based on your bag
population <- rep(c("strawberry", "other"), 
                 times = c(strawberry_candies, total_candies - strawberry_candies))

print(paste("Created a population of", length(population), "candies"))

########################################################
# 🔮 Magic Spell: Take One Small Sample
########################################################

# Let's take a sample of 10 candies from our population
sample_size <- 10
sample1 <- sample(population, sample_size, replace = FALSE)

# Count strawberry candies in our sample
sample1_strawberry <- sum(sample1 == "strawberry")
sample1_proportion <- sample1_strawberry / sample_size

print("=== SAMPLE 1 RESULTS ===")
print(paste("Strawberry candies in sample:", sample1_strawberry))
print(paste("Sample proportion:", round(sample1_proportion, 3)))
print(paste("True population proportion:", round(strawberry_proportion, 3)))

# Are they the same?
if (abs(sample1_proportion - strawberry_proportion) < 0.1) {
  print("Sample is very close to population! 🎯")
} else {
  print("Sample is different from population! This is normal! 📊")
}

########################################################
# ✨ Challenge: Take Multiple Samples!
########################################################

# Let's take 5 different samples and see what happens!
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

# Show all sample proportions together
print("\nAll sample proportions:")
print(round(sample_results, 3))

# Calculate how different the samples are
sample_range <- max(sample_results) - min(sample_results)
print(paste("Range of sample proportions:", round(sample_range, 3)))

########################################################
# 🔮 Magic Spell: Visualize Sampling Variability
########################################################

library(ggplot2)

# Create a data frame for plotting
sample_data <- data.frame(
  sample_number = 1:5,
  proportion = sample_results
)

# Create a bar plot of our 5 samples
ggplot(sample_data, aes(x = factor(sample_number), y = proportion)) +
  geom_bar(stat = "identity", fill = "pink", color = "darkred") +
  geom_hline(yintercept = strawberry_proportion, 
             color = "blue", linetype = "dashed", size = 1.5) +
  labs(title = "Strawberry Proportions in 5 Different Samples",
       x = "Sample Number",
       y = "Proportion of Strawberry Candies") +
  theme_minimal() +
  theme(text = element_text(size = 14)) +
  annotate("text", x = 3, y = strawberry_proportion + 0.05, 
           label = "True Population", color = "blue", size = 4)

########################################################
# ✨ Super Challenge: What About Sample Size?
########################################################

# Let's see what happens with different sample sizes!
print("\n=== EFFECT OF SAMPLE SIZE ===")

# Try samples of different sizes
sample_sizes <- c(5, 10, 20)

for(size in sample_sizes) {
  if(size <= total_candies) {  # Can't sample more than we have!
    test_sample <- sample(population, size, replace = FALSE)
    test_strawberry <- sum(test_sample == "strawberry")
    test_proportion <- test_strawberry / size
    
    print(paste("Sample size", size, "- Proportion:", round(test_proportion, 3)))
  }
}

########################################################
# 💡 What We Discovered
########################################################

print("\n=== SAMPLING DISCOVERIES ===")
print("🔍 Samples give us different results each time")
print("📊 This difference is called 'sampling variability'")
print("🎯 Sometimes samples are close to population, sometimes not")
print("📏 Larger samples tend to be more accurate")

# 💡 Key Learning
print("\n💡 Key Learning:")
print("Even with perfect sampling, we get different results!")
print("This is why statistics is both challenging and exciting!")

print("\nAmazing work exploring sampling! 🍬📊")