# 🔮 Day 1 - Spell 10: String Detective (Text Comparison Magic!)

# 🔍 Oda is trying to find a old friend of her, whose name is Mike
name <- "Mike"

if  (nchar(name) <= 4){
  print("📝 You have a nice short name!")
} else if (name == "mike" | name == "Mike" | name == "Michael" | name == "michael"){
  print("👥 Hi Mike, long time no see! I've caught some clams today! 🌊 🐚 🦪")
} else if (nchar(name) >= 8) {
  print("📚 Wow! You have a beautifully long name!")
} else {
  print("✨ You have a perfectly medium-sized name!")
}

# Bonus: Count the letters in your name!
print(paste("🔢 Your name has", nchar(name), "letters!"))

########################################################
# 🎈 Activity: Name Explorer!
# 1. Try your real name and see what category you get!
# 2. Try these names: "Jo", "Elizabeth", "Sam", "Christopher"
# 3. **Question:** What does `nchar()` do? Try it with different words!
# 4. **Challenge:** Why can't Oda ever find Mike? Can you fix this code so that Oda can find Mike?

########################################################
# ✨ Test different names:
# name <- "Jo"           # Short name?
# name <- "Elizabeth"    # Long name?
# name <- "Sam"          # What category?
# name <- "Christopher"  # Very long?
# name <- "mike"         # Lowercase Mike?

########################################################
# 🤔 The Big Problem: Why can't Oda find Mike?
# Look at the order of conditions carefully!
# - What happens when name = "Mike"?
# - Which condition gets checked first?
# - Will the second condition ever run for "Mike"?

########################################################
# 🎯 Challenge: Fix the code!
# How would you rearrange these conditions so Oda can find Mike?
# Hint: Check for Mike BEFORE checking name length!
