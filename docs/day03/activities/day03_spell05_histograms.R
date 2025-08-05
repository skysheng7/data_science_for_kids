# 🔮 Day 2 - Spell 9: Histogram Stories

# 🎈 Activity: Distribution Detective
# 📊 Shape Detective: Create histograms to reveal hidden patterns!

# Load our visualization magic
library(ggplot2)
library(dplyr)

# Create data about magical test scores
magic_test_scores <- data.frame(
  student_id = 1:100,
  magic_theory = rnorm(100, mean = 75, sd = 15),
  potion_brewing = c(rnorm(50, mean = 85, sd = 10), rnorm(50, mean = 65, sd = 12)),
  spell_casting = rbeta(100, shape1 = 2, shape2 = 5) * 100,
  dragon_care = rexp(100, rate = 0.02) + 50
)

# Clean up the scores (make sure they're between 0-100)
magic_test_scores <- magic_test_scores %>%
  mutate(
    magic_theory = pmax(0, pmin(100, magic_theory)),
    potion_brewing = pmax(0, pmin(100, potion_brewing)),
    spell_casting = pmax(0, pmin(100, spell_casting)),
    dragon_care = pmax(0, pmin(100, dragon_care))
  )

print("🧙‍♀️ Magic Test Scores Dataset (first 10 students):")
print(head(magic_test_scores, 10))

# 🎯 Challenge 1: Basic histogram
print("\n1️⃣ Basic Histogram Magic:")

# Create a histogram of magic theory scores
theory_hist <- ggplot(magic_test_scores, aes(x = magic_theory)) +
  geom_histogram(bins = 20, fill = "purple", color = "white") +
  labs(title = "Distribution of Magic Theory Scores",
       x = "Magic Theory Score", 
       y = "Number of Students") +
  theme_minimal()

print(theory_hist)

# 🔍 What does this shape tell us?
print("🔍 Shape Detective Analysis:")
print("Magic theory scores look like a bell curve (normal distribution)")
print("Most students scored around 75, with fewer getting very high or very low scores")

########################################################

# 🎯 Challenge 2: Compare different subjects
print("\n2️⃣ Compare Different Subjects:")

# Potion brewing histogram  
potion_hist <- ggplot(magic_test_scores, aes(x = potion_brewing)) +
  geom_histogram(bins = 20, fill = "green", color = "white") +
  labs(title = "Distribution of Potion Brewing Scores",
       x = "Potion Brewing Score", y = "Number of Students") +
  theme_minimal()

print(potion_hist)

# Your turn: Create a histogram for spell casting
spell_hist <- ggplot(magic_test_scores, aes(x = ...)) +
  geom_histogram(bins = 20, fill = "...", color = "white") +
  labs(title = "Distribution of ... Scores",
       x = "... Score", y = "Number of Students") +
  theme_minimal()

print(spell_hist)

########################################################

# 🎯 Challenge 3: Histogram with different bin sizes
print("\n3️⃣ Experimenting with Bin Sizes:")

# Few bins (chunky)
chunky_hist <- ggplot(magic_test_scores, aes(x = magic_theory)) +
  geom_histogram(bins = 5, fill = "red", alpha = 0.7) +
  labs(title = "Magic Theory - Few Bins (Chunky)", x = "Score") +
  theme_minimal()

print(chunky_hist)

# Many bins (detailed)
detailed_hist <- ggplot(magic_test_scores, aes(x = magic_theory)) +
  geom_histogram(bins = 50, fill = "blue", alpha = 0.7) +
  labs(title = "Magic Theory - Many Bins (Detailed)", x = "Score") +
  theme_minimal()

print(detailed_hist)

# Your turn: Try different bin numbers for dragon care
dragon_hist <- ggplot(magic_test_scores, aes(x = dragon_care)) +
  geom_histogram(bins = ..., fill = "orange", alpha = 0.7) +
  labs(title = "Dragon Care Scores", x = "Score") +
  theme_minimal()

print(dragon_hist)

########################################################

# 🎯 Challenge 4: Side-by-side comparison
print("\n4️⃣ Side-by-Side Comparison:")

# Let's create a long format for easy comparison
library(tidyr)
scores_long <- magic_test_scores %>%
  select(-student_id) %>%
  pivot_longer(cols = everything(), 
               names_to = "subject", 
               values_to = "score")

# Create faceted histograms
faceted_hist <- ggplot(scores_long, aes(x = score)) +
  geom_histogram(bins = 20, fill = "skyblue", color = "white") +
  facet_wrap(~ subject, scales = "free") +
  labs(title = "Score Distributions by Subject",
       x = "Score", y = "Count") +
  theme_minimal()

print(faceted_hist)

########################################################

# ✨ Advanced Challenge: Overlapping histograms
print("\n✨ Advanced Challenge - Overlapping Histograms:")

# Compare two subjects on the same plot
comparison_data <- magic_test_scores %>%
  select(magic_theory, potion_brewing) %>%
  pivot_longer(cols = everything(), 
               names_to = "subject", 
               values_to = "score")

overlay_hist <- ggplot(comparison_data, aes(x = score, fill = subject)) +
  geom_histogram(alpha = 0.6, position = "identity", bins = 20) +
  scale_fill_manual(values = c("purple", "green")) +
  labs(title = "Magic Theory vs Potion Brewing Scores",
       x = "Score", y = "Count", fill = "Subject") +
  theme_minimal()

print(overlay_hist)

########################################################

# 🎯 Your Data Detective Mission:
print("\n🕵️ Your Data Detective Mission:")
print("Look at each histogram and answer:")
print("1. What shape do you see? (bell curve, skewed, flat, etc.)")
print("2. Where do most students score?")
print("3. Are there any outliers (very high or low scores)?")
print("4. Which subject has the most consistent scores?")
print("5. Which subject shows the biggest variation?")

# Create summary statistics to help
summary_stats <- magic_test_scores %>%
  summarize(
    Magic_Theory_Avg = round(mean(magic_theory), 1),
    Magic_Theory_SD = round(sd(magic_theory), 1),
    Potion_Avg = round(mean(potion_brewing), 1),
    Potion_SD = round(sd(potion_brewing), 1),
    Spell_Avg = round(mean(spell_casting), 1),
    Spell_SD = round(sd(spell_casting), 1),
    Dragon_Avg = round(mean(dragon_care), 1),
    Dragon_SD = round(sd(dragon_care), 1)
  )

print("📊 Summary Statistics (Avg = Average, SD = Standard Deviation):")
print(summary_stats)

# 💡 Memory Tip:
# - Histograms show the SHAPE of your data
# - geom_histogram() creates histograms in ggplot2
# - bins= controls how many bars you see
# - Bell curve = most values in the middle
# - Skewed = lopsided (more values on one side)
# - Standard deviation tells you how spread out the data is