# 🔮 Day 1 - Spell 12: Magical Creature Detector!

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")


# 🦄 Magical Creature Classifier
creature_size <- 50   # Size in cm - Try: 10, 50, 200
creature_color <- "purple" # Try: "purple", "gold", "rainbow"

if (creature_size <= 20) {
  if (creature_color == "purple") {
    print("🧚‍♀️ You found a tiny fairy!")
  } else {
    print("🐛 You found a magical bug!")
  }
} else if (creature_size >= 21 & creature_size <= 100) {
  if (creature_color == "purple") {
    print("🦄 You found a unicorn!")
  } else if (creature_color == "gold") {
    print("🐉 You found a baby dragon!")
  } else {
    print("🦦 You found Oda the Otter!")
  }
} else if (creature_size >= 101) {
  print("👹 You found a friendly giant!")
}

########################################################
# 🎈 Activity: Create your own creature:
# 1. Try different combinations of `creature_size` (15, 50, 150) and `creature_color`
# 2. Add a new size range (maybe 101-300 for "large" creatures) with your own magical creature
# 3. Add a new color option with your own special message
# 4. **Challenge:** What happens if you use negative numbers or zero for size?

########################################################
# ✨ Test different combinations:
# creature_size <- 15
# creature_color <- "purple"  # Tiny fairy?

# creature_size <- 50
# creature_color <- "gold"    # Baby dragon?

# creature_size <- 150
# creature_color <- "blue"    # Friendly giant?

########################################################
# 🎯 Creative Challenges:
# 1. Add a new size category between 101-200 for "large" creatures
# 2. Add more colors like "silver", "rainbow", "invisible"
# 3. Add creature abilities based on color (flying, swimming, magic powers)

########################################################
# 🔧 Extension Ideas (uncomment to try):
# Add a third variable for creature abilities:
# creature_ability <- "flying"  # Try: "flying", "swimming", "invisible"

########################################################
# 🤔 Think about it:
# - How do nested if statements work?
# - Why do we check size first, then color?
# - What happens when we have multiple conditions to check?
# - How would you add a third characteristic like "flying ability"?

########################################################
# 🎈 Activity: Have your friends try to find creatures in your code!
# Give them different size and color combinations and see what they discover!