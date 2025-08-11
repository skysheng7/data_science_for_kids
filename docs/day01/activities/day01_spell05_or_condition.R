# 🔮 Day 1 - Spell 5: OR Condition Magic (Either Thing Can Be True!)

# 🍎 Oda's snack time detector

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

snack <- "apple"

if (snack == "apple" | snack == "banana" | snack == "carrot") {
  print("🥰 Yummy! Oda loves healthy snacks!")
  print("💪 This will give me energy for coding!")
} else if (snack == "cookie" | snack == "candy") {
  print("🍪 Sweet treat! But just a little bit!")
} else {
  print("🤔 Hmm, Oda isn't sure about this snack...")
}

########################################################
# 🎈 Activity: Snack Sorter!
# 1. Test with these snacks: "apple", "cookie", "pizza", "banana"
# 2. **Extension:** Add your favorite snack to one of the categories!
# 3. **Question:** What happens if you type "Apple" with a capital A?

########################################################
# ✨ Try different snacks:
# snack <- "apple"    # Healthy snack?
# snack <- "banana"   # Also healthy?
# snack <- "cookie"   # Sweet treat?
# snack <- "pizza"    # What category?
# snack <- "Apple"    # Capital A - what happens?

########################################################
# 🎯 Extension Challenge: Add more snacks!
# Add these lines after the first if statement:
# else if (snack == "cheese" | snack == "nuts") {
#   print("🧀 Protein power! Great for brain fuel!")
# }

########################################################
# 🤔 Think about it:
# - Why does "Apple" vs "apple" matter?
# - How is OR different from AND?