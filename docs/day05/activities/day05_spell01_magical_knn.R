# 🔮 Day 5 - Spell 1: KNN Classification with Magical Creatures
# Learn to predict whether magical creatures are friendly or mischievous!

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

# Load our magical libraries
library(tidymodels)
library(tidyverse)

# Load the magical creature dataset
# This dataset contains information about various magical creatures Oda has encountered
creatures <- read_csv("../datasets/magical_creatures.csv")

# Take a look at our magical friends
head(creatures)

########################################################
# PART 1: Exploring the Magical Creature Data
########################################################

# Let's see what variables we have to work with
# Each creature has: size, magic_power, friendliness_score, and behavior (friendly/mischievous)
glimpse(creatures)

# How many creatures of each type do we have?
creatures %>%
  count(behavior)

# Let's visualize our creatures!
# Plot size vs magic_power, colored by behavior
ggplot(creatures, aes(x = size, y = magic_power, color = behavior)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Oda's Magical Creature Collection",
       x = "Size", 
       y = "Magic Power",
       color = "Behavior") +
  theme_minimal()

# 💡 Question: Can you see any patterns? 
# Do friendly creatures tend to cluster together?

########################################################
# PART 2: Setting Up Our KNN Model
########################################################

# Split our data into training and testing sets
# We'll use 75% for training, 25% for testing
set.seed(123)  # For reproducible results

creature_split <- initial_split(creatures, prop = 0.75, strata = behavior)
creature_train <- training(creature_split)
creature_test <- testing(creature_split)

# Let's check our split worked well
creature_train %>% count(behavior)
creature_test %>% count(behavior)

# Create a recipe for preprocessing our data
# We'll standardize size and magic_power to make sure they're on the same scale
creature_recipe <- recipe(behavior ~ size + magic_power, data = creature_train) %>%
  step_scale(all_predictors()) %>%
  step_center(all_predictors())

# Create our KNN model specification
# We'll start with K=5 neighbors
knn_model <- nearest_neighbor(neighbors = 5) %>%
  set_engine("kknn") %>%
  set_mode("classification")

########################################################
# PART 3: Training Our KNN Classifier
########################################################

# Create a workflow that combines our recipe and model
creature_workflow <- workflow() %>%
  add_recipe(creature_recipe) %>%
  add_model(knn_model)

# Train our model!
creature_fit <- creature_workflow %>%
  fit(data = creature_train)

# Let's make predictions on our test data
creature_predictions <- predict(creature_fit, creature_test) %>%
  bind_cols(creature_test)

# Look at our predictions
head(creature_predictions)

########################################################
# PART 4: Evaluating Our Magical Predictions
########################################################

# Calculate the accuracy of our predictions
accuracy_result <- creature_predictions %>%
  metrics(truth = behavior, estimate = .pred_class) %>%
  filter(.metric == "accuracy")

print(paste("Our KNN model accuracy:", round(accuracy_result$.estimate, 3)))

# Create a confusion matrix to see where we made mistakes
creature_predictions %>%
  conf_mat(truth = behavior, estimate = .pred_class)

# Visualize our predictions vs actual behavior
ggplot(creature_predictions, aes(x = size, y = magic_power)) +
  geom_point(aes(color = behavior, shape = .pred_class), size = 3, alpha = 0.8) +
  labs(title = "Actual vs Predicted Creature Behavior",
       subtitle = "Color = Actual, Shape = Predicted",
       x = "Size", 
       y = "Magic Power",
       color = "Actual Behavior",
       shape = "Predicted Behavior") +
  theme_minimal()

########################################################
# PART 5: Testing Different K Values
########################################################

# Let's try different K values to see which works best!
# Fill in the blanks to test K = 1, 3, 7, and 10

test_k_values <- function(k_val) {
  knn_model_k <- nearest_neighbor(neighbors = k_val) %>%
    set_engine("kknn") %>%
    set_mode("classification")
  
  workflow_k <- workflow() %>%
    add_recipe(creature_recipe) %>%
    add_model(knn_model_k)
  
  fit_k <- workflow_k %>% fit(data = creature_train)
  
  predictions_k <- predict(fit_k, creature_test) %>%
    bind_cols(creature_test)
  
  accuracy_k <- predictions_k %>%
    metrics(truth = behavior, estimate = .pred_class) %>%
    filter(.metric == "accuracy") %>%
    pull(.estimate)
  
  return(accuracy_k)
}

# Test different K values
k_values <- c(1, 3, 5, 7, 10)
accuracies <- map_dbl(k_values, test_k_values)

# Create a data frame with results
k_results <- tibble(K = k_values, Accuracy = accuracies)

print(k_results)

# Plot K vs Accuracy
ggplot(k_results, aes(x = K, y = Accuracy)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "KNN Performance: How K Affects Accuracy",
       x = "Number of Neighbors (K)",
       y = "Accuracy") +
  theme_minimal()

########################################################
# PART 6: Predict New Magical Creatures!
########################################################

# Oda has discovered some new creatures! Can you predict their behavior?
new_creatures <- tibble(
  name = c("Sparkle Dragon", "Tiny Pixie", "Giant Troll"),
  size = c(8.5, 1.2, 9.8),
  magic_power = c(9.1, 7.8, 3.2)
)

# Make predictions for the new creatures
# Use the best K value from your analysis above
best_k <- k_results %>%
  filter(Accuracy == max(Accuracy)) %>%
  pull(K) %>%
  first()

print(paste("Best K value:", best_k))

# Retrain model with best K
best_knn_model <- nearest_neighbor(neighbors = best_k) %>%
  set_engine("kknn") %>%
  set_mode("classification")

best_workflow <- workflow() %>%
  add_recipe(creature_recipe) %>%
  add_model(best_knn_model)

best_fit <- best_workflow %>% fit(data = creature_train)

# Predict behavior for new creatures
new_predictions <- predict(best_fit, new_creatures) %>%
  bind_cols(new_creatures)

print("Predictions for new magical creatures:")
print(new_predictions)

########################################################
# 🎈 Your Turn: Challenges!
########################################################

# ✨ Challenge 1: Add friendliness_score as a third predictor
# Hint: Modify the recipe to include all three variables

# ✨ Challenge 2: Try to get accuracy above 85%
# Hint: Experiment with different combinations of predictors and K values

# ✨ Challenge 3: Create a beautiful visualization showing the decision boundaries
# Hint: Make predictions on a grid of points and color the background

# 💡 Key Learning Points:
# - KNN makes predictions based on the K closest neighbors
# - The choice of K affects how flexible vs stable our predictions are
# - Standardizing features is important when they have different scales
# - Always test on data the model hasn't seen before!