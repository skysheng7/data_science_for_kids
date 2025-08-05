# 🔮 Day 1 - Spell 9: Order Matters - The Racing Game!

# ✨ Spell 9B: Wrong Order - The Broken Magic!
# ⚠️ What happens if we check from LAST place to FIRST place?
print("=== VERSION 2: Wrong Order ===")
if (position >= 1) {  
  print("👏 Good race! Keep practicing!")
} else if (position == 1) {  
  print("🥇 GOLD MEDAL! You're the champion!")
} else if (position == 2) {  
  print("🥈 SILVER MEDAL! Amazing job!")
}

########################################################
# 🎈 Activity: Code Detective!
# 1. Try with position = 1, 2, and 3
# 2. **Question:** Why does the code always say "Good race!" even for 1st place?
# 3. **Discovery:** Which conditions will NEVER run in this code and why?

########################################################
# 🤔 Think about these questions:
# - Why does this code give the wrong answer?
# - In this code, why do the 2nd and 3rd conditions never run?
# - What does ">= 1" mean and why does it catch everything?
# - How should we order our conditions to avoid this problem?

########################################################
# 💡 The Big Lesson:
# Always check SPECIFIC conditions before GENERAL ones!
# R stops at the first TRUE condition it finds!