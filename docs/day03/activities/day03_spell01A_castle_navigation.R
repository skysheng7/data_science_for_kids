#!/usr/bin/env Rscript

# 🔮 Day 3 - Spell 1A: Castle Navigation Practice (R)
# 🎈 Activity: Moving around Oda's castle using getwd() and setwd()
#
# 💡 What are getwd() and setwd()?
# - getwd(): tells you your current working directory (where you are)
# - setwd("path"): moves you to a new folder (like walking to a new room)
#
# 🚗 Your route:
# 1) Go to otter_castle/library/creatures/
# 2) Go back to otter_castle/library/
# 3) Go to otter_castle/library/fish_catching/
# 4) Go to otter_castle/museums/

########################################################
# Step 0: Where am I now?
print("🔍 Where am I now?")
print(getwd())

########################################################
# Step 1: Go to creatures folder
# Tip: Use a relative path starting from day03
# ✅ Correct way
setwd("otter_castle/library/creatures")
print("🚪 Entered: creatures/")
print(getwd())

# ✨ Going into a new room
setwd("cats")
print("🚪 Entered: cats/")
print(getwd())

########################################################
# Step 2: Go back to library folder (one level up)
# ".." means go up one level
setwd("../../")
print("↩️ Back to: library/")
print(getwd())

########################################################
# Step 3: Move to fish_catching folder (from library)
setwd("fish_catching")
print("🎣 Entered: fish_catching/")
print(getwd())

########################################################
# Challenge: Go to museums folder
# From fish_catching/, we need to go up to library/, up to otter_castle/, then into museums/
# Replace "???" with the correct path
setwd("???")
print("🖼️ Entered: museums/")
print(getwd())

########################################################
# Memory tip 💡
# - getwd(): "Where am I?"
# - setwd("path"): "Walk to a new room"
# - ".." means "go back to the hallway (one level up)"

