# 🔮 Day 2 - Spell 1: Basic Loop Magic

# 🎈 Activity: Printing Practice
# Let's learn how to make R repeat actions automatically!

# First, let's see what happens WITHOUT a loop:
print("Hello, magical world!")
print("Hello, magical world!")
print("Hello, magical world!")
print("Hello, magical world!")
print("Hello, magical world!")

# 😴 That was tiring to type! Let's use loop magic instead:

# 🌟 Basic loop - repeat 5 times
for (i in 1:5) {
  print("Hello, magical world!")
}

########################################################
# 🎯 Challenge 1: Print your name 3 times using a for loop
# Fill in the blanks, replace the ... with the correct number or string:
for (i in 1:...) {
  print("My name is ...")
}

# 🔍 Let's see what 'i' actually does:
for (i in 1:5) {
  print(paste("This is loop number", i))
}

########################################################
# 🎯 Challenge 2: Create a countdown from 10 to 1
# Hint: Use 10:1 instead of 1:10
# Note: paste() is a function that glues strings together
for (countdown in ...:...) {
  print(paste("Countdown:", countdown))
}
print("🚀 Blast off!")

########################################################
# ✨ Advanced Challenge: Print different animals on each loop
# Note: c() is a function that creates a collection of items!
animals <- c("🐶 dog", "🐱 cat", "🐰 rabbit", "🐸 frog", "🦆 duck")

for (i in 1:5) {
  print(paste("Animal", i, "is a", animals[i]))
}

# 💡 Memory Tip: Think of 'i' as a magical counter that changes each time!
# The loop runs once for each number in the range you give it.