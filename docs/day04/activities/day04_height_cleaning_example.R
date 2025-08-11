# 🔮 Day 4 - Height Data Cleaning Example

Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

# This script shows you how to:
# 1. Load messy height data
# 2. Clean and fix common data problems
# 3. Calculate min, max, median, and mean
# 4. Handle missing or weird values

########################################################
# 📁 Step 1: Load the data
########################################################

# Load the height data from our CSV file
height_data <- read.csv("../datasets/height_test.csv")

# Let's see what we have
print("Raw data:")
print(height_data)

# Check the structure of our data
str(height_data)

########################################################
# 🧹 Step 2: Clean the data
########################################################
# only keep the second and third columns
height_data <- height_data[, c(2:3)] 

# The height column has a very long name! Let's rename it
colnames(height_data)[2] <- "wizard_name"
colnames(height_data)[3] <- "height_cm"

# Let's see the updated column names
print("New column names:")
print(colnames(height_data))

# Convert height to numeric (in case it's stored as text)
height_data$height_cm <- as.numeric(height_data$height_cm)

# Check for any weird values or missing data
print("Summary of height data:")
summary(height_data$height_cm)

########################################################
# 🔍 Step 3: Data quality checks
########################################################

# Check for missing values (NA)
missing_count <- sum(is.na(height_data$height_cm))
print(paste("Number of missing heights:", missing_count))

# Check for unrealistic heights (too small or too large)
# Kids are usually between 100-200 cm tall
weird_heights <- height_data$height_cm[height_data$height_cm < 30 | height_data$height_cm > 190]
if(length(weird_heights) > 0) {
  print("Warning: Found some unusual heights:")
  print(weird_heights)
}

########################################################
# 📊 Step 4: Calculate basic statistics
########################################################

# Remove any missing values for our calculations
clean_heights <- height_data$height_cm[!is.na(height_data$height_cm)]

# Calculate the basic statistics
min_height <- min(clean_heights)
max_height <- max(clean_heights)
mean_height <- mean(clean_heights)
median_height <- median(clean_heights)

# Print our results in a nice format
print("🎉 HEIGHT STATISTICS 🎉")
print("========================")
print(paste("📏 Minimum height:", min_height, "cm"))
print(paste("📏 Maximum height:", max_height, "cm"))
print(paste("📏 Average height:", round(mean_height, 2), "cm"))
print(paste("📏 Median height:", median_height, "cm"))
print(paste("👥 Total people measured:", length(clean_heights)))
