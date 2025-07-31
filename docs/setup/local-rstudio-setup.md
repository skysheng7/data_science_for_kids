---
layout: default
title: Local R Studio Setup
---

# 💻 Local R Studio Setup Guide

*For offline adventures or advanced users who want R installed on their computer*

## 🌟 When to Use Local Setup

Choose local installation if:
- 🏠 You want to code without internet
- 🚀 You're planning to continue R programming after camp
- 💻 Your family prefers local software installations
- 🔧 You're comfortable with software installation

**Note:** We recommend [Posit Cloud](posit-cloud-setup.md) for most campers as it's easier to set up!

## 📋 Step-by-Step Installation

### Step 1: Install R

1. 🌐 Go to [https://cran.r-project.org/](https://cran.r-project.org/)
2. 🖱️ Click on your operating system:
   - **Windows**: "Download R for Windows" → "base" → "Download R 4.x.x"
   - **Mac**: "Download R for macOS" → Choose your Mac type
   - **Linux**: "Download R for Linux" → Choose your distribution
3. 📥 Download and run the installer
4. ✅ Follow the installation wizard (accept default settings)

### Step 2: Install RStudio

1. 🌐 Go to [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
2. 📥 Download RStudio Desktop (FREE version)
3. 📦 Install RStudio (it will automatically find your R installation)
4. 🚀 Launch RStudio

### Step 3: Test Your Installation

1. 🖥️ Open RStudio
2. 💬 In the Console (bottom left), type: `print("Hello, magical data world!")`
3. ⏎ Press Enter
4. 🎉 You should see your message appear!

### Step 4: Install Required Packages

Copy and paste this code into the Console:

```r
# Install packages for our camp
install.packages(c(
  "tidyverse",    # Data manipulation and visualization
  "ggplot2",      # Beautiful graphs
  "dplyr",        # Data wrangling
  "readr",        # Reading data files
  "plotly",       # Interactive plots
  "DT",           # Interactive tables
  "knitr",        # Document creation
  "rmarkdown"     # Reports and presentations
))
```

This might take 5-10 minutes to download and install.

## 🎯 RStudio Interface Guide

### The Four Panels

- **📝 Editor** (top left): Where you write longer R scripts
- **💻 Console** (bottom left): Where you run R commands
- **🌍 Environment** (top right): Shows your variables and data
- **📊 Files/Plots** (bottom right): File browser and where graphs appear

### Quick Tips for Young Coders

- 💾 **Save your work**: Use Ctrl+S (or Cmd+S on Mac) frequently
- 🏃‍♀️ **Run code**: Press Ctrl+Enter to run the current line
- 🧹 **Clear console**: Press Ctrl+L to clean up the console
- ❓ **Get help**: Type `?function_name` to learn about functions

## 📊 Setting Up for Camp Activities

### Create Your Camp Folder

1. 📁 Create a folder on your computer called "DataScienceForKids"
2. 📂 Inside that folder, create folders for each day:
   - Day1_Programming_Magic
   - Day2_Data_Stories
   - Day3_Statistics_Safari
   - Day4_ML_Quest
   - Day5_AI_Networks

### Download Camp Materials

Your instructor will provide:
- 📊 Dataset files (.csv)
- 🔮 R script templates (.R)
- 📋 Activity instructions

Save these in the appropriate day folders!

## 🆘 Troubleshooting

### "R won't install"
- ✅ Make sure you have administrator permissions
- ✅ Close all other programs during installation
- ✅ Try downloading again (file might be corrupted)
- ✅ Ask a parent/guardian for help with permissions

### "RStudio can't find R"
- ✅ Install R first, then RStudio
- ✅ Make sure both are the same "bit version" (32-bit or 64-bit)
- ✅ Restart your computer after installing R

### "Packages won't install"
- ✅ Check your internet connection
- ✅ Try installing one package at a time
- ✅ Ask your instructor for help

### "I'm getting error messages"
- ✅ Don't panic! Errors are how we learn
- ✅ Read the error message carefully
- ✅ Check for typos (R is case-sensitive)
- ✅ Ask Claude AI or your instructor for help

## 🔄 Switching Between Local and Cloud

Good news! You can use both:

- 💻 **Local RStudio** for home practice and offline work
- ☁️ **Posit Cloud** for camp activities and collaboration
- 📤 **Export projects** from cloud to local when camp ends
- 📥 **Import projects** from local to cloud if needed

## 🚀 Next Steps

Once your setup is complete:

1. 🧪 Test with some simple R commands
2. 🎨 Try creating your first plot
3. 📚 Explore the [Day 1 activities](../day01/)
4. 🤖 Consider setting up [Claude AI](claude-setup.md) as your coding helper

---

**Having trouble?** Don't worry! Our [troubleshooting guide](../resources/troubleshooting.md) has solutions for common issues, or you can stick with [Posit Cloud](posit-cloud-setup.md) which requires no installation.

[← Back to Setup](index.md) | [Try Posit Cloud Instead ←](posit-cloud-setup.md) | [Start Day 1 →](../day01/)