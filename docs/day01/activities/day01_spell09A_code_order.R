# 🔮 Day 1 - Spell 9: Order Matters - The Racing Game!

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")


# ✨ Spell 9A: Order Matters - The Racing Game!
# 🏁 Oda's magical racing game - Position matters!
position <- 2

# Version 1: Check from FIRST place to LAST place (CORRECT WAY)
print("=== VERSION 1: Correct Order ===")
if (position == 1) {
  print("🥇 GOLD MEDAL! You're the champion!")
} else if (position == 2) {
  print("🥈 SILVER MEDAL! Amazing job!")
} else if (position == 3) {
  print("🥉 BRONZE MEDAL! Great effort!")
} else {
  print("👏 Good race! Keep practicing!")
}

print("")  # Empty line for spacing

########################################################
# 🎈 Activity: Code Detective!
# 1. Try with position = 1, 2, and 3