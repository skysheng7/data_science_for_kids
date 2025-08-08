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
# 🧭 Starter templates (fill in the ...)

# 1) Average by subject
avg_by_subject <- school_data %>%
  summarize(
    avg_magic = mean(magic_score),
    avg_potion = mean(potion_score),
    avg_flying = mean(flying_score)
  )
print(avg_by_subject)

# 2) Overall score and top students
ranked <- school_data %>%
  mutate(overall = (magic_score + potion_score + flying_score) / 3) %>%
  arrange(desc(overall))
print(head(ranked, 5))

top_plot <- ggplot(ranked, aes(x = reorder(student_name, overall), y = overall, fill = house)) +
  geom_col(color = "black") +
  coord_flip() +
  labs(title = "Top Students by Overall Score", x = "Student", y = "Overall Score")
print(top_plot)

# 3) Average overall by house
house_avg <- ranked %>%
  group_by(house) %>%
  summarize(average_overall = mean(overall)) %>%
  arrange(desc(average_overall))
print(house_avg)

########################################################
# ✨ Challenge (from scratch)
# Create a histogram showing distribution of overall scores.
# Hint: use ggplot(ranked, aes(x = overall)) + geom_histogram().

