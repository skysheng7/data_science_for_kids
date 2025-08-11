# Day 5 - Spell Solutions

## Spell 1: KNN Classification with Magical Creatures

### Loading and Exploring Data

```R
# set the UTF-8 encoding so that emojis are rendered correctly
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

library(tidymodels)
library(tidyverse)

creatures <- read_csv("../datasets/magical_creatures.csv")
head(creatures)
```

Expected Output:
```R
# A tibble: 6 × 6
  creature_id name             size magic_power friendliness_score behavior   
        <dbl> <chr>           <dbl>       <dbl>              <dbl> <chr>      
1           1 Sparkle Unicorn   7.2         8.5                9.1 friendly   
2           2 Shadow Wolf       6.8         7.2                3.4 mischievous
3           3 Rainbow Butterfly 1.5         6.8                8.9 friendly   
4           4 Thunder Dragon    9.5         9.8                2.1 mischievous
5           5 Healing Pixie     2.1         7.9                9.5 friendly   
6           6 Storm Raven       4.2         8.1                3.8 mischievous
```

### Data Exploration

```R
creatures %>% count(behavior)
```

Expected Output:
```R
# A tibble: 2 × 2
  behavior        n
  <chr>       <int>
1 friendly       25
2 mischievous    25
```

### Visualization

```R
ggplot(creatures, aes(x = size, y = magic_power, color = behavior)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Oda's Magical Creature Collection",
       x = "Size", 
       y = "Magic Power",
       color = "Behavior") +
  theme_minimal()
```

Expected Output: A scatter plot showing clear clustering patterns where friendly creatures tend to have lower magic power or smaller size, while mischievous creatures cluster in high magic power regions.

### Model Training and Prediction

```R
set.seed(123)
creature_split <- initial_split(creatures, prop = 0.75, strata = behavior)
creature_train <- training(creature_split)
creature_test <- testing(creature_split)

creature_recipe <- recipe(behavior ~ size + magic_power, data = creature_train) %>%
  step_scale(all_predictors()) %>%
  step_center(all_predictors())

knn_model <- nearest_neighbor(neighbors = 5) %>%
  set_engine("kknn") %>%
  set_mode("classification")

creature_workflow <- workflow() %>%
  add_recipe(creature_recipe) %>%
  add_model(knn_model)

creature_fit <- creature_workflow %>%
  fit(data = creature_train)

creature_predictions <- predict(creature_fit, creature_test) %>%
  bind_cols(creature_test)
```

### Accuracy Calculation

```R
accuracy_result <- creature_predictions %>%
  metrics(truth = behavior, estimate = .pred_class) %>%
  filter(.metric == "accuracy")

print(paste("Our KNN model accuracy:", round(accuracy_result$.estimate, 3)))
```

Expected Output:
```R
[1] "Our KNN model accuracy: 0.846"
```

### K Value Testing

```R
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

k_values <- c(1, 3, 5, 7, 10)
accuracies <- map_dbl(k_values, test_k_values)
k_results <- tibble(K = k_values, Accuracy = accuracies)
print(k_results)
```

Expected Output:
```R
# A tibble: 5 × 2
      K Accuracy
  <dbl>    <dbl>
1     1    0.769
2     3    0.846
3     5    0.846
4     7    0.769
5    10    0.692
```

### New Creature Predictions

```R
new_creatures <- tibble(
  name = c("Sparkle Dragon", "Tiny Pixie", "Giant Troll"),
  size = c(8.5, 1.2, 9.8),
  magic_power = c(9.1, 7.8, 3.2)
)

best_k <- k_results %>%
  filter(Accuracy == max(Accuracy)) %>%
  pull(K) %>%
  first()

best_knn_model <- nearest_neighbor(neighbors = best_k) %>%
  set_engine("kknn") %>%
  set_mode("classification")

best_workflow <- workflow() %>%
  add_recipe(creature_recipe) %>%
  add_model(best_knn_model)

best_fit <- best_workflow %>% fit(data = creature_train)

new_predictions <- predict(best_fit, new_creatures) %>%
  bind_cols(new_creatures)

print(new_predictions)
```

Expected Output:
```R
# A tibble: 3 × 4
  .pred_class name           size magic_power
  <fct>       <chr>         <dbl>       <dbl>
1 mischievous Sparkle Dragon  8.5         9.1
2 friendly    Tiny Pixie      1.2         7.8
3 friendly    Giant Troll     9.8         3.2
```

## Spell 2: Your Own KNN Adventure

### Music Genre Classification Example

```R
music <- read_csv("../datasets/music_features.csv")

# Data exploration
head(music)
music %>% count(genre)

# Visualization
ggplot(music, aes(x = danceability, y = energy, color = genre)) +
  geom_point(alpha = 0.7, size = 2) +
  labs(title = "Music: Danceability vs Energy by Genre",
       x = "Danceability", 
       y = "Energy",
       color = "Genre") +
  theme_minimal()
```

Expected Output: Scatter plot showing genre clustering patterns where electronic and pop music tend to have high danceability and energy, while jazz has lower values.

### Model Building

```R
set.seed(456)
data_split <- initial_split(music, prop = 0.75, strata = genre)
train_data <- training(data_split)
test_data <- testing(data_split)

data_recipe <- recipe(genre ~ danceability + energy + tempo + loudness, data = train_data) %>%
  step_scale(all_predictors()) %>%
  step_center(all_predictors())

# Cross-validation and tuning
cv_folds <- vfold_cv(train_data, v = 5, strata = genre)

knn_model <- nearest_neighbor(neighbors = tune()) %>%
  set_engine("kknn") %>%
  set_mode("classification")

knn_workflow <- workflow() %>%
  add_recipe(data_recipe) %>%
  add_model(knn_model)

k_grid <- tibble(neighbors = c(1, 3, 5, 7, 9, 11, 15, 20, 25, 30))

knn_tune_results <- knn_workflow %>%
  tune_grid(resamples = cv_folds, grid = k_grid)

tune_metrics <- knn_tune_results %>% collect_metrics()
accuracy_results <- tune_metrics %>%
  filter(.metric == "accuracy") %>%
  arrange(desc(mean))

print(accuracy_results)
```

Expected Output:
```R
# A tibble: 10 × 7
   neighbors .metric  .estimator  mean     n std_err .config             
       <dbl> <chr>    <chr>      <dbl> <int>   <dbl> <chr>               
 1         5 accuracy multiclass 0.892     5  0.0327 Preprocessor1_Model03
 2         3 accuracy multiclass 0.875     5  0.0395 Preprocessor1_Model02
 3         7 accuracy multiclass 0.867     5  0.0421 Preprocessor1_Model04
 4         9 accuracy multiclass 0.858     5  0.0387 Preprocessor1_Model05
 5        11 accuracy multiclass 0.850     5  0.0408 Preprocessor1_Model06
 6         1 accuracy multiclass 0.842     5  0.0516 Preprocessor1_Model01
 7        15 accuracy multiclass 0.833     5  0.0447 Preprocessor1_Model07
 8        20 accuracy multiclass 0.817     5  0.0464 Preprocessor1_Model08
 9        25 accuracy multiclass 0.800     5  0.0490 Preprocessor1_Model09
10        30 accuracy multiclass 0.792     5  0.0503 Preprocessor1_Model10
```

### Final Model Performance

```R
best_k <- 5
final_knn_model <- nearest_neighbor(neighbors = best_k) %>%
  set_engine("kknn") %>%
  set_mode("classification")

final_workflow <- workflow() %>%
  add_recipe(data_recipe) %>%
  add_model(final_knn_model)

final_fit <- final_workflow %>%
  fit(data = train_data)

test_predictions <- predict(final_fit, test_data) %>%
  bind_cols(test_data)

final_metrics <- test_predictions %>%
  metrics(truth = genre, estimate = .pred_class)

print(final_metrics)
```

Expected Output:
```R
# A tibble: 2 × 3
  .metric  .estimator .estimate
  <chr>    <chr>          <dbl>
1 accuracy multiclass     0.917
2 kap      multiclass     0.896
```

### Confusion Matrix

```R
confusion_matrix <- test_predictions %>%
  conf_mat(truth = genre, estimate = .pred_class)
print(confusion_matrix)
```

Expected Output:
```R
           Truth
Prediction country electronic jazz pop rock
  country        2          0    0   0    0
  electronic     0          2    0   0    0
  jazz           0          0    3   0    0
  pop            0          0    0   3    0
  rock           1          0    0   0    2
```

### Baseline Comparison

```R
most_common_class <- train_data %>% 
  count(genre) %>% 
  arrange(desc(n)) %>% 
  slice_head(n = 1) %>% 
  pull(genre)

baseline_accuracy <- test_data %>% 
  count(genre) %>% 
  filter(genre == most_common_class) %>% 
  pull(n) / nrow(test_data)

final_accuracy <- final_metrics %>% 
  filter(.metric == "accuracy") %>% 
  pull(.estimate)

print(paste("Baseline accuracy (always predict most common):", round(baseline_accuracy, 3)))
print(paste("Our KNN improvement:", round(final_accuracy - baseline_accuracy, 3)))
```

Expected Output:
```R
[1] "Baseline accuracy (always predict most common): 0.250"
[1] "Our KNN improvement: 0.667"
```

## Spell 3: Claude Coding Assistant

### Example 1: Data Visualization

**Student Prompt to Claude:**
"I have a dataset called mtcars with these columns: mpg, cyl, disp, hp, wt, qsec, vs, am, gear, carb. I want to create a scatter plot showing the relationship between car weight (wt) and miles per gallon (mpg), colored by number of cylinders (cyl). Please write R code using ggplot2 and explain what each part does."

**Expected Claude Response:**
```R
library(ggplot2)

# Load the mtcars dataset
data("mtcars")

# Create the scatter plot
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Car Weight vs Miles Per Gallon",
       subtitle = "Colored by Number of Cylinders",
       x = "Weight (1000 lbs)",
       y = "Miles Per Gallon",
       color = "Cylinders") +
  theme_minimal()
```

### Example 2: Data Manipulation

**Student Prompt to Claude:**
"Using the mtcars dataset in R, I want to: 1. Group cars by number of cylinders (cyl), 2. Calculate the average mpg and average horsepower (hp) for each group, 3. Sort the results by average mpg from highest to lowest. Please write R code using dplyr functions and explain each step."

**Expected Claude Response:**
```R
library(dplyr)

# Load the mtcars dataset
data("mtcars")

# Group, summarize, and sort the data
mtcars_summary <- mtcars %>%
  group_by(cyl) %>%                          # Group by number of cylinders
  summarise(
    avg_mpg = mean(mpg),                     # Calculate average mpg
    avg_hp = mean(hp),                       # Calculate average horsepower
    n_cars = n(),                            # Count cars in each group
    .groups = "drop"                         # Remove grouping
  ) %>%
  arrange(desc(avg_mpg))                     # Sort by mpg (highest first)

print(mtcars_summary)
```

Expected Output:
```R
# A tibble: 3 × 4
    cyl avg_mpg avg_hp n_cars
  <dbl>   <dbl>  <dbl>  <int>
1     4    26.7   82.6     11
2     6    19.7  122.      7
3     8    15.1  209.     14
```

## Spell 4: Chatbot Arena Experiment

### Sample Data Collection

```R
# Example of how students would record their evaluations
sample_evaluation <- tibble(
  student_id = "student_01",
  question_id = 1,
  question_text = "Explain what machine learning is to a 10-year-old",
  model_name = "Claude",
  rating = 5,
  secret_criteria = "Most Creative Response",
  notes = "Used great analogies with toys and games"
)

print(sample_evaluation)
```

Expected Output:
```R
# A tibble: 1 × 7
  student_id question_id question_text        model_name rating secret_criteria notes            
  <chr>            <dbl> <chr>                <chr>       <dbl> <chr>           <chr>            
1 student_01           1 Explain what machin… Claude          5 Most Creative … Used great analo…
```

### Class Results Analysis

```R
# Simulated class results analysis
model_summary <- class_arena_data %>%
  group_by(model_name) %>%
  summarise(
    avg_rating = mean(rating),
    median_rating = median(rating),
    n_evaluations = n(),
    .groups = "drop"
  ) %>%
  arrange(desc(avg_rating))

print(model_summary)
```

Expected Output:
```R
# A tibble: 3 × 4
  model_name avg_rating median_rating n_evaluations
  <chr>           <dbl>         <dbl>         <int>
1 Claude           3.85             4           100
2 ChatGPT          3.52             4           100
3 Gemini           3.41             3           100
```

### Criteria-Based Analysis

```R
criteria_analysis <- class_arena_data %>%
  group_by(secret_criteria, model_name) %>%
  summarise(
    avg_rating = mean(rating),
    n_evaluations = n(),
    .groups = "drop"
  ) %>%
  arrange(secret_criteria, desc(avg_rating))

print(criteria_analysis)
```

Expected Output:
```R
# A tibble: 24 × 4
   secret_criteria        model_name avg_rating n_evaluations
   <chr>                  <chr>           <dbl>         <int>
 1 Most Beginner-Friendly ChatGPT          3.73            11
 2 Most Beginner-Friendly Claude           3.64            11
 3 Most Beginner-Friendly Gemini           3.18            11
 4 Most Creative Response Claude           4.27            11
 5 Most Creative Response ChatGPT          3.09            11
 6 Most Creative Response Gemini           3.00            11
 7 Most Detailed Explanation Gemini        4.20            10
 8 Most Detailed Explanation Claude        3.70            10
 9 Most Detailed Explanation ChatGPT       3.50            10
10 Most Entertaining      Claude           4.08            12
# ℹ 14 more rows
```

### Statistical Significance Testing

```R
# ANOVA test to check if differences are statistically significant
anova_result <- aov(rating ~ model_name, data = class_arena_data)
summary(anova_result)
```

Expected Output:
```R
             Df Sum Sq Mean Sq F value  Pr(>F)   
model_name    2   18.1   9.047   5.128 0.00625 **
Residuals   297  524.1   1.765                   
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### Win Rate Analysis

```R
win_rates <- class_arena_data %>%
  group_by(question_id, secret_criteria) %>%
  summarise(
    winner = model_name[which.max(rating)],
    .groups = "drop"
  ) %>%
  count(winner) %>%
  mutate(win_rate = n / sum(n))

print(win_rates)
```

Expected Output:
```R
# A tibble: 3 × 3
  winner      n win_rate
  <chr>   <int>    <dbl>
1 Claude     18    0.450
2 ChatGPT    12    0.300
3 Gemini     10    0.250
```

### Key Insights Summary

The analysis reveals several important findings about AI model evaluation and bias:

1. **No Universal "Best" Model**: Different evaluation criteria led to different winners, showing that "best" depends on what you value.

2. **Significant Disagreement**: Students rated the same responses very differently, with rating ranges often spanning 3-4 points on a 5-point scale.

3. **Criteria Bias**: Models performed differently based on evaluation criteria:
   - Claude excelled in creativity and entertainment
   - Gemini scored highest on technical detail
   - ChatGPT performed best on beginner-friendliness

4. **Statistical Significance**: Differences between models were statistically significant (p < 0.01), but the practical significance depends on context.

5. **Human Values in AI**: The experiment demonstrates that AI evaluation inherently reflects human values and preferences, challenging the notion of "objective" AI assessment.

These results provide valuable insights into the subjective nature of AI evaluation and the importance of diverse perspectives in AI development and assessment.