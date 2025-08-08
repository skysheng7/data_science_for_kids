# 🔮 Day 3 - Spell 8D: Team Project - Magic School Mystery (uses magic_school_grades.csv)

########################################################
# 🧰 Load tools and data

library(dplyr)
library(ggplot2)
school_data <- read.csv("datasets/magic_school_grades.csv")

print("🔍 Evidence loaded from magic_school_grades.csv")
head(school_data)

########################################################
# 🎯 Your missions (pick one or more)
# 1) Which subject do students struggle with most?
# 2) Who are the top students by overall score?
# 3) What's the average score in each house?

########################################################
# TODO: Fill in the ... below to solve the mysteries!

# 1) Average by subject
avg_by_subject <- school_data %>%
  summarize(
    avg_magic = mean(...),
    avg_potion = mean(...),
    avg_flying = mean(...)
  )
print(avg_by_subject)

########################################################
# 2) Overall score and top students
ranked <- school_data %>%
  mutate(overall = (... + ... + ...) / 3) %>%
  arrange(desc(overall))
print(head(ranked, 5))

top_plot <- ggplot(ranked, aes(x = reorder(student_name, overall), y = overall, fill = house)) +
  geom_col(color = "black") +
  coord_flip() +
  labs(title = "Top Students by Overall Score", x = "Student", y = "Overall Score")
print(top_plot)

########################################################
# 3) Average overall by house
house_avg <- ranked %>%
  group_by(house) %>%
  summarize(average_overall = mean(...)) %>%
  arrange(desc(average_overall))
print(house_avg)

########################################################
# ✨ Challenge (from scratch)
# Create a histogram showing distribution of overall scores.
# Hint: use ggplot(ranked, aes(x = overall)) + geom_histogram().


########################################################
# Bonus: Explore with scatter and histogram

# 4) Scatter plot: Is potion score related to flying score?
pf_scatter <- ggplot(school_data, aes(x = ..., y = ..., color = house)) +
  geom_point(size = 4) +
  labs(title = "Potion vs Flying Scores",
       x = "Potion Score", y = "Flying Score", color = "House")
print(pf_scatter)

# 5) Histogram: How are magic scores distributed?
magic_hist <- ggplot(school_data, aes(x = ...)) +
  geom_histogram(bins = 8, fill = "...", color = "black") +
  labs(title = "Distribution of Magic Scores",
       x = "Magic Score", y = "Number of Students")
print(magic_hist)
