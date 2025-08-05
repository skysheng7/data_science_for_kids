# 🔮 Day 2 - Spell 4: Open-Source Magic

# 🎈 Activity: Package Explorer
# 🌟 Discover what open-source means and how to get help from the R community

# What is open-source? 
# It's like a giant library where thousands of friendly wizards 
# share their best spells for FREE! Anyone can use them, improve them, 
# and share them back to help others.

# 📚 Let's explore some popular R packages
print("🎨 Popular R Packages for Data Science:")
print("1. ggplot2 - Makes beautiful charts and graphs")
print("2. dplyr - Cleans and transforms data easily") 
print("3. readr - Reads data from files")
print("4. stringr - Works with text and words")
print("5. plotly - Creates interactive plots")

# 🔧 How to install a new package (we'll practice this!)
# install.packages("package_name")  # Only run this once!

# 📖 How to load a package to use it
# Always load packages at the top of your script
library(ggplot2)  # For making plots
library(dplyr)    # For data wrangling

# 🆘 Getting help in R - try these commands!
print("\n🆘 Ways to get help:")
print("1. Type ?function_name in the console")
print("2. Use help(function_name)")
print("3. Search online: 'R how to...'")
print("4. Visit stackoverflow.com")
print("5. Check the package documentation")

# Let's practice getting help!
# Try typing these in your console (remove the # first):
# ?mean
# help(length)
# ?ggplot

# 🎯 Challenge 1: Explore a function
# Use the ? command to learn about the paste() function
# Then use paste() to combine your name with " is learning R!"
your_name <- "..."  # Fill in your name
message <- paste(your_name, "is learning R!")
print(message)

# 🎯 Challenge 2: Package research
# Pick one package from the list above and research it online
# What does it do? Can you find an example of how to use it?

# 🌐 The R Community
print("\n🌐 The R Community is AMAZING:")
print("- Millions of people use R worldwide")
print("- They create packages to solve problems")
print("- They share knowledge freely")
print("- They help each other learn")
print("- YOU are now part of this community!")

# ✨ Fun fact: There are over 18,000 packages available on CRAN!
# That's like having 18,000 different magical toolboxes to choose from!

# Let's see what packages are currently loaded
print("\n📦 Currently loaded packages:")
print(search())

# 💡 Memory Tip: 
# - install.packages() downloads the package (do this ONCE)
# - library() loads the package to use (do this each session)
# - ? gets help for any function
# - The R community loves to help beginners!