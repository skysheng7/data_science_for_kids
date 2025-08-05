# 🔮 Day 2 - Spell 2: Loop Detective Challenge

# 🎈 Activity: Fix the Broken Code
# 🕵️ Detective Mission: Someone cast incomplete loop spells! 
# Your job is to debug the broken code and fill in the blanks.

########################################################
# 🐛 Broken Spell #1: Missing loop variable
# Can you fix this loop to print numbers 1 through 7?
for ( in 1:7) {
  print(paste("Number:", i))
}

########################################################
# 🐛 Broken Spell #2: Missing closing brace
# This loop should print "Magic spell" 4 times
for (spell in 1:4) {
  print("Magic spell")


########################################################
# 🐛 Broken Spell #3: Wrong range
# This should count from 1 to 10, but something's wrong!
for (num in 1:) {
  print(paste("Counting:", num))
}

########################################################
# 🐛 Broken Spell #4: Missing quotes
# This should print a message with each student's name
students <- c("Alex", "Sam", "Jordan", "Taylor")
for (student in students) {
  print(paste(Hello, student))
}

########################################################
# 🐛 Broken Spell #5: Incomplete calculation
# This should calculate and print the square of each number (number * number), 
# for example 2 squared is 4, 3 squared is 9, etc.
for (number in 1:5) {
  square <- number * 
  print(paste(number, "squared is", square))
}

########################################################
# ✨ Advanced Detective Challenge: 
# This loop should create a pattern like: ⭐, ⭐⭐, ⭐⭐⭐, ⭐⭐⭐⭐
# But there are multiple bugs! Can you find and fix them all?

for (i in 1:4) {
  stars <- 
  for (j in 1:) {
    stars <- paste(stars, "⭐", sep="")
  }
  print(stars)
}

# 💡 Memory Tip: Common debugging steps:
# 1. Check if all { have matching }
# 2. Make sure variable names are spelled correctly  
# 3. Check that strings have quotes around them
# 4. Verify your ranges make sense (like 1:10, not 1:)