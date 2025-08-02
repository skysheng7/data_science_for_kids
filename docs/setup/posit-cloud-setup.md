---
layout: default
title: Posit Cloud Setup
---

# 🔮 Posit Cloud Setup Guide

Posit Cloud is our magical online coding environment where you'll write R code in your web browser - no installation needed! It's free, professional, easy to share with others, and has everything pre-installed for our data science adventures.

## 📋 Step-by-Step Setup

### Step 1: Create Your Account

1. 🌐 Go to [posit.cloud](https://posit.cloud)
2. 🖱️ Click **"Get Started"** if you never don't have an account, or **"Sign Up"** if you already have an account
3. 🆓 You will see the "Free" plan on the left most column, click **"Learn more"**
4. ✍️ Click **"Sign up"**
5. 📧 Enter your email address and create a password; Or sign up using your own Google account, GitHub account or Clever account
6. ✅ Verify your email (check your email's inbox for an email from Posit Cloud, and click "verify email"!)
7. 🎯 Go back to your Posit Cloud page and click **"Continue"**


### Step 2: Join Our Camp Workspace

Here is the workspace link we will use during this camp. It's called "data_playground":
`https://posit.cloud/spaces/624374/join?access_code=DPo4bWWzbmekRHTREK_nW0M8Sjmpjmjd3gXKHLFO`

1. 🔗 Click the workspace link from your instructor
2. 🎯 Click **"Join Workspace"**
3. ✨ You're in! You will see **"data_playground"** being listed on the left panel. If you click on "All Content", you should see project for **"Day_1"**.

### Step 3: Test Your Setup

1. 📂 Open the **"Day_1"** project
   
   💡 **Important**: When you open this project, Posit Cloud automatically creates your own permanent copy! This means you can make changes, play around, and save your work - it's all yours to keep and access later.

2. 🖱️ Under the **"Console"** tab (top left)
3. ⌨️ Type: `print("Hello, magical data world!")`
4. ⏎ Press Enter
5. 🎉 You should see your message appear!

### Step 4: Learning more about Posit Cloud (R Studio interface)

🎯 The Magic Interface

- **📝 Editor (top left):** Your magical scroll for writing longer R spells (code).
- **🔮 Console (bottom left):** Cast spells (code) here and see the magic happen instantly!
- **🌳 Environment (top right):** All the magical creatures (variables, data) you create will live here.
- **🗺️ Files & Plots (bottom right):** Find your project files and see the beautiful plots/graphs you create.

![R Studio Interface](../../images/r_studio_explain.png)

### Step 5: Write Your First Magical scroll ✨

Ready to write your first piece of R code? We call them scripts, but think of them as magical scrolls!

**1. Create Your Scroll**
- In the top-menu, click **File** -> **New File** -> **R Script**.
- A blank page will appear. This is where you'll write your spell!

**2. Save Your Scroll**
- Click the blue save icon (💾).
- Name your file `my_first_spell.R` (or any other name you like) and click **Save**.

**3. Write Your Spell**
- Copy and paste the code below into your new scroll:
```R
# set variable a to have the value of 1
a <- 1

# set variable b to have the value of 2
b <- 2

# set variable c to have the value of (a + b)
c <- a + b

# print out the value of c
print(c)
```

**4. Cast Your Spell!**

There are a few ways to run your code:

- **Run one line at a time:**
  - Click on the line of code you want to run.
  - Click the **Run** button, or press `Ctrl+Enter` (Windows) or `Cmd+Enter` (Mac).
  - This is great for testing your spell line-by-line!

- **Run a chunk of code:**
  - Highlight the lines you want to run with your mouse.
  - Click the **Run** button at the top-right of your script editor.
  - You will see the result in the **Console** below.

- **Run the whole script (Source):**
  - Click the **Source** button to run everything in your file at once. It's like casting a big, powerful spell!
  - You should see the number `3` appear in the console. You just did magic with code!

## ✨ Magical Tips & Tricks

- 💡 **Save your work often!** Click the save icon or press `Ctrl+S` (Windows) / `Cmd+S` (Mac).
- 🐛 **Errors are okay!** They are just clues to help you learn and fix your spell.
- 🌈 **Make your code colorful!** Rainbow parentheses help you see where code blocks start and end. Here's how to turn them on:
  1. Go to **Tools** -> **Global Options**.
  2. Click **Code** on the left.
  3. Go to the **Display** tab on the top.
  4. Check the box for **Use rainbow parentheses**.
  5. Click **Apply**!
- 📝 **Name things like a wizard!** Good names help you remember what your magical creatures (variables) do:
  - Use `snake_case` or `kabab-case` (like `my_age` or `favorite-color`)
  - Always start with a letter, never a number (✅ `age1` ❌ `1age`)
  - Only use lowercase letters, numbers, and `-` or `_`
  - Make names short but meaningful (this is hard but important!)

## 🆘 Troubleshooting

### Common Coding Mistakes 🐛

#### "object 'my_variable' not found"
**What it means:** You tried to use a magical creature (variable) that R doesn't know about.

**Why it happens:**
- You forgot to create your variable first (like `my_variable <- 10`)
- You have a typo in the name

**The Fix:** Run the line that creates your variable first, then check your spelling!

#### Case-Sensitivity Chaos
**What it means:** R thinks `MyData` and `mydata` are totally different things.

**Why it happens:** R is picky about capital letters.

**The Fix:** Always spell your variables exactly the same way - capitals matter!

#### Missing Parentheses or Quotes: ( or "
**What it means:** You opened something but forgot to close it.

**Why it happens:** Easy to forget!

**The Fix:** Count your `(` and `)`, and your `"` marks. The rainbow parentheses we turned on help you see which ones match!

### Setup Problems 🔧

#### "I can't see the workspace!"
- ✅ Make sure you're logged into your Posit Cloud account
- ✅ Ask your instructor for the workspace link again
- ✅ Try refreshing your browser

#### "My code isn't working!"
- ✅ Check for typos (R is case-sensitive!)
- ✅ Ask a friend or instructor for help

#### "Everything is slow!"
- ✅ Close other browser tabs
- ✅ Make sure you have good internet connection

## 🎉 You're Ready for Magic!

Congratulations! Your magical coding castle is now ready 🏰. It's time to go back to **[Day 1 activities](../day01/README.md)** and start your first day of magical programming adventures.


