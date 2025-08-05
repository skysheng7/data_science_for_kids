# 🔮 Day 2 - Spell Solutions

## Spell 1: Basic Loop Magic

### Challenge 1: Print your name 3 times
```R
for (i in 1:3) {
  print("My name is Alex")
}
```

Expected Output:
```R
[1] "My name is Alex"
[1] "My name is Alex"
[1] "My name is Alex"
```

### Challenge 2: Create a countdown from 10 to 1
```R
for (countdown in 10:1) {
  print(paste("Countdown:", countdown))
}
print("🚀 Blast off!")
```

Expected Output:
```R
[1] "Countdown: 10"
[1] "Countdown: 9"
[1] "Countdown: 8"
[1] "Countdown: 7"
[1] "Countdown: 6"
[1] "Countdown: 5"
[1] "Countdown: 4"
[1] "Countdown: 3"
[1] "Countdown: 2"
[1] "Countdown: 1"
[1] "🚀 Blast off!"
```

## Spell 2: Loop Detective Challenge

### Broken Spell #1: Missing loop variable
```R
for (i in 1:7) {
  print(paste("Number:", i))
}
```

### Broken Spell #2: Missing closing brace
```R
for (spell in 1:4) {
  print("Magic spell")
}
```

### Broken Spell #3: Wrong range
```R
for (num in 1:10) {
  print(paste("Counting:", num))
}
```

### Broken Spell #4: Missing quotes
```R
students <- c("Alex", "Sam", "Jordan", "Taylor")
for (student in students) {
  print(paste("Hello", student))
}
```

### Broken Spell #5: Incomplete calculation
```R
for (number in 1:5) {
  square <- number * number
  print(paste(number, "squared is", square))
}
```

### Advanced Detective Challenge:
```R
for (i in 1:4) {
  stars <- ""
  for (j in 1:i) {
    stars <- paste(stars, "⭐", sep="")
  }
  print(stars)
}
```

Expected Output:
```R
[1] "⭐"
[1] "⭐⭐"
[1] "⭐⭐⭐"
[1] "⭐⭐⭐⭐"
```

## Spell 3: Story Scrambler Challenge

### Challenge 1: Reverse Word Order Spy Code

**Fill in the blanks:**
```R
# Step 1: Create reversed word list
reversed_words <- c()
for (i in length(story_words):1) {
  reversed_words <- c(reversed_words, story_words[i])  
}

# Step 2: Print the reversed story
print("🔒 ENCODED (Backwards):")
reversed_story <- paste(reversed_words, collapse = " ")
print(reversed_story)  # Answer: reversed_story

# Step 3: Restore original order  
original_words <- c()
for (i in length(reversed_words):1) {
  original_words <- c(original_words, reversed_words[i])  # Answer: i
}
print("\n🔓 DECODED (Original Order):")
original_restored <- paste(original_words, collapse = " ")
print(original_restored)  # Answer: original_restored
```

Expected Output:
```R
[1] "🔒 ENCODED (Backwards):"
[1] "cloud. candy a on stuck was who cub bear sleepy a save to sky the through sailed and leaves, of out boat flying a built friends, became dragon tiny a and rabbit smart a Forest, Magic the In"
[1] "🔓 DECODED (Original Order):"
[1] "In the Magic Forest, a smart rabbit and a tiny dragon became friends, built a flying boat out of leaves, and sailed through the sky to save a sleepy bear cub who was stuck on a candy cloud."
```

### Challenge 2: Every-Other-Word Spy Code

**Fill in the blanks:**
```R
# Step 2: Separate words by position
for (i in 1:length(story_words)) {
  if (i %% 2 == 1) {  # Odd positions
    odd_words <- c(odd_words, story_words[i])  # Answer: i
  } else {  # Even positions
    even_words <- c(even_words, story_words[i])  # Answer: i
  }
}

# Step 3: Create encoded message
encoded_words <- c(odd_words, "---", even_words)
print("🔒 ENCODED (Every-other-word):")
encoded_story <- paste(encoded_words, collapse = " ")
print(encoded_story)  # Answer: encoded_story

# Step 4: Decode back to original
decoded_words <- c()
for (i in 1:max(length(odd_words), length(even_words))) {
  if (i <= length(odd_words)) {
    decoded_words <- c(decoded_words, odd_words[i])  # Answer: i
  }
  if (i <= length(even_words)) {
    decoded_words <- c(decoded_words, even_words[i])  # Answer: i
  }
}

print("🔓 DECODED (Original Order):")
decoded_story <- paste(decoded_words, collapse = " ")
print(decoded_story)  # Answer: decoded_story
```

Expected Output:
```R
[1] "🔒 ENCODED (Every-other-word):"
[1] "In Magic a rabbit a dragon friends, a boat of and through to a bear who on candy --- the Forest, smart and tiny became built flying out leaves, sailed the sky save sleepy cub was stuck a cloud."
[1] "🔓 DECODED (Original Order):"
[1] "In the Magic Forest, a smart rabbit and a tiny dragon became friends, built a flying boat out of leaves, and sailed through the sky to save a sleepy bear cub who was stuck on a candy cloud."
```

### Bonus: Secret Message Examples

**Example with mini secret:**
```R
my_secret <- "Meet me at the playground after school."
my_words <- unlist(strsplit(my_secret, " "))

# Method 1: Reverse encoding
reversed_secret <- c()
for (i in length(my_words):1) {
  reversed_secret <- c(reversed_secret, my_words[i])
}
print(paste(reversed_secret, collapse = " "))
```

Expected Output:
```R
[1] "school. after playground the at me Meet"
```

## Spell 4: Art with Loops

### Christmas Tree Pattern (completed)
```R
for (row in 1:5) {
  # Add spaces for centering
  spaces <- ""
  for (space in 1:(5-row)) {
    spaces <- paste(spaces, " ", sep="")
  }
  
  # Add stars for the tree
  stars <- ""
  for (star in 1:(2*row-1)) {
    stars <- paste(stars, "🎄", sep="")
  }
  
  # Print the complete line
  print(paste(spaces, stars, sep=""))
}

# Add the tree trunk
print("    🪵")
```

Expected Output:
```R
[1] "    🎄"
[1] "   🎄🎄🎄"
[1] "  🎄🎄🎄🎄🎄"
[1] " 🎄🎄🎄🎄🎄🎄🎄"
[1] "🎄🎄🎄🎄🎄🎄🎄🎄🎄"
[1] "    🪵"
```

## Spell 5: Open-Source Magic

### Challenge 1: Explore a function
```R
your_name <- "Alex"
message <- paste(your_name, "is learning R!")
print(message)
```

Expected Output:
```R
[1] "Alex is learning R!"
```

## Spell 6: ggplot2 Meets Loops

### Your Turn: Create your own creature
```R
new_creature <- data.frame(
  name = "Stardust",
  magic_power = 88,
  flying_speed = 92,
  friendship_level = 95
)
```

## Spell 7: Loading Data Magic

### Your Turn: Create your own dataset
```R
my_favorites <- data.frame(
  item = c("Pizza", "Dragons", "Coding"),
  category = c("Food", "Creature", "Activity"),
  rating = c(10, 9, 8),
  years_liked = c(15, 5, 2)
)

print(my_favorites)
write.csv(my_favorites, "my_favorites.csv", row.names = FALSE)
```

Expected Output:
```R
    item category rating years_liked
1  Pizza     Food     10          15
2 Dragons Creature      9           5
3  Coding Activity      8           2
```

## Spell 8: Data Transformation Spells

### Your turn: Select just student names and whether they have pets
```R
pet_info <- select(magic_school, student_name, has_pet)
```

### Your turn: Find students in grade 4 or 5
```R
older_students <- filter(magic_school, grade >= 4)
```

### Your turn: Create a column for total score
```R
with_total <- mutate(magic_school, total_score = magic_score + potion_score + flying_score)
```

### Your turn: Group by whether students have pets
```R
pet_summary <- magic_school %>%
  group_by(has_pet) %>%
  summarize(
    count = n(),
    avg_magic = mean(magic_score)
  )
```

Expected Output:
```R
  has_pet count avg_magic
    <lgl> <int>     <dbl>
1   FALSE     3      88.7
2    TRUE     5      84.2
```

## Spell 9: Pipeline Magic

### Your turn: Find creatures from the Forest
```R
forest_creatures <- creatures %>%
  filter(realm == "Forest") %>%
  select(name, type, power_level)
```

### Your turn: Add age categories and filter young powerful creatures
```R
young_powerful <- creatures %>%
  mutate(age_category = case_when(
    age_years < 100 ~ "Young",
    age_years < 200 ~ "Adult", 
    TRUE ~ "Ancient"
  )) %>%
  filter(age_category == "Young" & power_level > 75) %>%
  select(name, age_years, age_category, power_level)
```

### Your turn: Group by creature type
```R
type_summary <- creatures %>%
  group_by(type) %>%
  summarize(
    count = n(),
    avg_age = mean(age_years),
    max_power = max(power_level)
  )
```

## Spell 10: Histogram Stories

### Your turn: Create a histogram for spell casting
```R
spell_hist <- ggplot(magic_test_scores, aes(x = spell_casting)) +
  geom_histogram(bins = 20, fill = "orange", color = "white") +
  labs(title = "Distribution of Spell Casting Scores",
       x = "Spell Casting Score", y = "Number of Students") +
  theme_minimal()
```

### Your turn: Try different bin numbers for dragon care
```R
dragon_hist <- ggplot(magic_test_scores, aes(x = dragon_care)) +
  geom_histogram(bins = 15, fill = "orange", alpha = 0.7) +
  labs(title = "Dragon Care Scores", x = "Score") +
  theme_minimal()
```

## Spell 11: Scatter Plot Adventures

### Your turn: Create a scatter plot of magic power vs flying speed
```R
power_speed <- ggplot(magical_creatures, aes(x = magic_power, y = flying_speed)) +
  geom_point(size = 3, color = "green") +
  geom_text(aes(label = name), vjust = -1, size = 3) +
  labs(title = "Magic Power vs Flying Speed",
       x = "Magic Power", y = "Flying Speed") +
  theme_minimal()
```

### Your turn: Add a trend line to age vs magic power
```R
age_magic_trend <- ggplot(magical_creatures, aes(x = age_years, y = magic_power)) +
  geom_point(size = 3, color = "purple") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Age vs Magic Power with Trend Line",
       x = "Age (years)", y = "Magic Power") +
  theme_minimal()
```

## Spell 12: Bar Chart Champions

### Your turn: Create a bar chart of total points per house
```R
points_chart <- ggplot(house_data, aes(x = house, y = total_points)) +
  geom_bar(stat = "identity", fill = "gold") +
  labs(title = "Total Points per House",
       x = "House", y = "Total Points") +
  theme_minimal()
```

### Your turn: Create a horizontal bar chart for spell competitions
```R
horizontal_spells <- ggplot(house_data, aes(x = reorder(house, spell_competitions), y = spell_competitions)) +
  geom_bar(stat = "identity", fill = "purple") +
  coord_flip() +
  labs(title = "Spell Competitions (Horizontal)",
       x = "House", y = "Spell Competition Wins") +
  theme_minimal()
```

## Spell 13: Team Project

### Example Dataset Choice and Analysis
```R
# Choose dataset
my_data <- pet_adoption

# Explore data
print(paste("Rows:", nrow(my_data), "| Columns:", ncol(my_data)))

# Create summary
adoption_summary <- my_data %>%
  group_by(pet_type) %>%
  summarize(
    total_pets = n(),
    adopted_count = sum(is_adopted),
    adoption_rate = round(mean(is_adopted) * 100, 1),
    avg_days_to_adopt = round(mean(days_at_center[is_adopted]), 1)
  ) %>%
  arrange(desc(adoption_rate))

# Create visualization
viz1 <- ggplot(adoption_summary, aes(x = reorder(pet_type, adoption_rate), y = adoption_rate)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  coord_flip() +
  labs(title = "Adoption Rates by Pet Type",
       x = "Pet Type", y = "Adoption Rate (%)") +
  theme_minimal()
```

## Key Concepts Learned

### For Loops
- `for (i in 1:10)` repeats code 10 times
- `i` is a counter that changes each loop
- Always use `{}` for multiple commands
- Useful for repetitive tasks

### Data Wrangling
- `select()` picks columns
- `filter()` picks rows  
- `mutate()` creates new columns
- `group_by()` groups data
- `summarize()` calculates summaries
- `%>%` chains commands together

### Visualizations
- `geom_histogram()` shows data distribution
- `geom_point()` creates scatter plots
- `geom_bar()` compares categories
- `aes()` maps data to visual elements
- Always add clear titles and labels

### Packages
- `library()` loads packages
- `install.packages()` downloads packages once
- `?function` gets help
- R community is friendly and helpful

## Common Mistakes and Fixes

### Loop Errors
- **Missing `{}`**: Every `{` needs a matching `}`
- **Wrong variable names**: Check spelling carefully
- **Missing quotes**: Text needs quotes around it

### Data Wrangling Errors  
- **Package not loaded**: Use `library(dplyr)` first
- **Typos in column names**: Check exact spelling
- **Wrong filter syntax**: Use `==` for equals, not `=`

### Plot Errors
- **Missing `print()`**: Plots in loops need `print()`
- **Wrong aesthetic mapping**: Check x and y variables exist
- **Package not loaded**: Use `library(ggplot2)` first