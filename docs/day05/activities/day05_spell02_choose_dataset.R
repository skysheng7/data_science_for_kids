# 🔮 Day 5 - Spell 2: Your Own KNN Adventure
# Choose your quest and build your own classification model!

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

# Load our magical libraries
library(tidymodels)
library(tidyverse)

########################################################
# PART 1: Choose Your Adventure!
########################################################

# 🏰 Option 1: Hogwarts House Sorting
# Predict which Hogwarts house a student belongs to based on personality traits

# 🌟 Option 2: Pokemon Type Prediction  
# Predict a Pokemon's primary type based on their battle stats

# 🎵 Option 3: Music Genre Classification
# Predict music genre based on audio features

# Uncomment ONE of the following sections to start your adventure:

########################################################
# 🏰 ADVENTURE 1: Hogwarts House Sorting
########################################################

# Uncomment this section if you choose the Hogwarts adventure:

# hogwarts <- read_csv("../datasets/hogwarts_students.csv")
# 
# # Explore the data
# head(hogwarts)
# glimpse(hogwarts)
# 
# # See the distribution of houses
# hogwarts %>% count(house)
# 
# # Visualize personality traits by house
# ggplot(hogwarts, aes(x = courage, y = intelligence, color = house)) +
#   geom_point(alpha = 0.7, size = 2) +
#   labs(title = "Hogwarts Students: Courage vs Intelligence",
#        x = "Courage Score", 
#        y = "Intelligence Score",
#        color = "House") +
#   theme_minimal()
# 
# # Set up your data for modeling
# my_data <- hogwarts
# target_variable <- "house"
# predictor_variables <- c("courage", "intelligence", "ambition", "loyalty")

########################################################
# 🌟 ADVENTURE 2: Pokemon Type Prediction
########################################################

# Uncomment this section if you choose the Pokemon adventure:

# pokemon <- read_csv("../datasets/pokemon_stats.csv")
# 
# # Explore the data
# head(pokemon)
# glimpse(pokemon)
# 
# # See the distribution of types
# pokemon %>% count(type1)
# 
# # Visualize stats by type (focus on main types)
# main_types <- pokemon %>% 
#   count(type1) %>% 
#   filter(n >= 20) %>% 
#   pull(type1)
# 
# pokemon %>%
#   filter(type1 %in% main_types) %>%
#   ggplot(aes(x = attack, y = defense, color = type1)) +
#   geom_point(alpha = 0.7, size = 2) +
#   labs(title = "Pokemon: Attack vs Defense by Type",
#        x = "Attack", 
#        y = "Defense",
#        color = "Type") +
#   theme_minimal()
# 
# # Set up your data for modeling (filter to main types for simpler classification)
# my_data <- pokemon %>% filter(type1 %in% main_types)
# target_variable <- "type1"
# predictor_variables <- c("hp", "attack", "defense", "speed")

########################################################
# 🎵 ADVENTURE 3: Music Genre Classification
########################################################

# Uncomment this section if you choose the Music adventure:

music <- read_csv("../datasets/music_features.csv")

# Explore the data
head(music)
glimpse(music)

# See the distribution of genres
music %>% count(genre)

# Visualize music features by genre
ggplot(music, aes(x = danceability, y = energy, color = genre)) +
  geom_point(alpha = 0.7, size = 2) +
  labs(title = "Music: Danceability vs Energy by Genre",
       x = "Danceability", 
       y = "Energy",
       color = "Genre") +
  theme_minimal()

# Set up your data for modeling
my_data <- music
target_variable <- "genre"
predictor_variables <- c("danceability", "energy", "tempo", "loudness")

########################################################
# PART 2: Build Your KNN Model
########################################################

# Now that you've chosen your adventure, let's build the model!

# Split the data into training and testing sets
set.seed(456)  # Different seed for variety

data_split <- initial_split(my_data, prop = 0.75, strata = !!sym(target_variable))
train_data <- training(data_split)
test_data <- testing(data_split)

# Check our splits
print("Training data distribution:")
train_data %>% count(!!sym(target_variable))

print("Testing data distribution:")
test_data %>% count(!!sym(target_variable))

# Create a recipe for preprocessing
# We'll use all the predictor variables you selected
formula_str <- paste(target_variable, "~", paste(predictor_variables, collapse = " + "))
data_recipe <- recipe(as.formula(formula_str), data = train_data) %>%
  step_scale(all_predictors()) %>%
  step_center(all_predictors())

print("Recipe created!")
print(data_recipe)

########################################################
# PART 3: Find the Best K Value
########################################################

# Let's use cross-validation to find the best K value
set.seed(789)

# Create cross-validation folds
cv_folds <- vfold_cv(train_data, v = 5, strata = !!sym(target_variable))

# Create a KNN model with tuning
knn_model <- nearest_neighbor(neighbors = tune()) %>%
  set_engine("kknn") %>%
  set_mode("classification")

# Create workflow
knn_workflow <- workflow() %>%
  add_recipe(data_recipe) %>%
  add_model(knn_model)

# Define K values to test
k_grid <- tibble(neighbors = c(1, 3, 5, 7, 9, 11, 15, 20, 25, 30))

# Tune the model (this might take a moment!)
print("Tuning model... please wait!")
knn_tune_results <- knn_workflow %>%
  tune_grid(resamples = cv_folds, grid = k_grid)

# Collect and examine the results
tune_metrics <- knn_tune_results %>% collect_metrics()

# Show accuracy results
accuracy_results <- tune_metrics %>%
  filter(.metric == "accuracy") %>%
  arrange(desc(mean))

print("K values ranked by accuracy:")
print(accuracy_results)

# Plot K vs accuracy
accuracy_results %>%
  ggplot(aes(x = neighbors, y = mean)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  geom_errorbar(aes(ymin = mean - std_err, ymax = mean + std_err), 
                width = 0.5, alpha = 0.7) +
  labs(title = "KNN Performance: How K Affects Accuracy",
       subtitle = "Error bars show standard error across CV folds",
       x = "Number of Neighbors (K)",
       y = "Accuracy") +
  theme_minimal()

########################################################
# PART 4: Train Final Model and Make Predictions
########################################################

# Select the best K value
best_k <- accuracy_results %>%
  slice_head(n = 1) %>%
  pull(neighbors)

print(paste("Best K value:", best_k))
print(paste("Best accuracy:", round(accuracy_results$mean[1], 3)))

# Create final model with best K
final_knn_model <- nearest_neighbor(neighbors = best_k) %>%
  set_engine("kknn") %>%
  set_mode("classification")

final_workflow <- workflow() %>%
  add_recipe(data_recipe) %>%
  add_model(final_knn_model)

# Train on full training set
final_fit <- final_workflow %>%
  fit(data = train_data)

# Make predictions on test set
test_predictions <- predict(final_fit, test_data) %>%
  bind_cols(test_data)

# Evaluate performance
final_metrics <- test_predictions %>%
  metrics(truth = !!sym(target_variable), estimate = .pred_class)

print("Final model performance on test data:")
print(final_metrics)

# Show confusion matrix
print("Confusion Matrix:")
confusion_matrix <- test_predictions %>%
  conf_mat(truth = !!sym(target_variable), estimate = .pred_class)
print(confusion_matrix)

########################################################
# PART 5: Visualize Your Results
########################################################

# Create a visualization of your predictions
# This will vary depending on which adventure you chose

if (length(predictor_variables) >= 2) {
  # Plot using first two predictors
  pred_var1 <- predictor_variables[1]
  pred_var2 <- predictor_variables[2]
  
  ggplot(test_predictions, aes_string(x = pred_var1, y = pred_var2)) +
    geom_point(aes_string(color = target_variable, shape = ".pred_class"), 
               size = 3, alpha = 0.8) +
    labs(title = paste("Predictions vs Actual:", stringr::str_to_title(target_variable)),
         subtitle = "Color = Actual, Shape = Predicted",
         x = stringr::str_to_title(pred_var1), 
         y = stringr::str_to_title(pred_var2),
         color = paste("Actual", stringr::str_to_title(target_variable)),
         shape = paste("Predicted", stringr::str_to_title(target_variable))) +
    theme_minimal()
}

########################################################
# 🎈 Your Turn: Analysis Questions!
########################################################

# Answer these questions based on your results:

# 1. What was your final accuracy? Is this good or bad?
final_accuracy <- final_metrics %>% 
  filter(.metric == "accuracy") %>% 
  pull(.estimate)
print(paste("My final accuracy was:", round(final_accuracy, 3)))

# 2. Which categories/classes were hardest to predict correctly?
# Look at your confusion matrix above!

# 3. What K value worked best? Why do you think that is?
print(paste("Best K was:", best_k))

########################################################
# ✨ Extra Challenges:
########################################################

# ✨ Challenge 1: Try adding more predictor variables
# Can you improve your accuracy by including more features?

# ✨ Challenge 2: Predict some new examples
# Create new data points and see what your model predicts

# ✨ Challenge 3: Compare with a simple baseline
# What would accuracy be if you always predicted the most common class?
most_common_class <- train_data %>% 
  count(!!sym(target_variable)) %>% 
  arrange(desc(n)) %>% 
  slice_head(n = 1) %>% 
  pull(!!sym(target_variable))

baseline_accuracy <- test_data %>% 
  count(!!sym(target_variable)) %>% 
  filter(!!sym(target_variable) == most_common_class) %>% 
  pull(n) / nrow(test_data)

print(paste("Baseline accuracy (always predict most common):", round(baseline_accuracy, 3)))
print(paste("Our KNN improvement:", round(final_accuracy - baseline_accuracy, 3)))

# 💡 Key Learning Points:
# - Different datasets have different challenges
# - Cross-validation helps us choose good hyperparameters
# - It's important to compare against simple baselines
# - Visualization helps us understand where our model succeeds and fails!