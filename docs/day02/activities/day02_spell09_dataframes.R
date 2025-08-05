# 🔮 Day 2 - Spell 9: What is a Dataframe?

# 🎈 Activity: Building Your First Data Table
# 🗂️ Learn how to organize data like a digital spreadsheet!

# 💡 What is a Dataframe?
# Think of it like a super simple spreadsheet - it has rows and columns,
# just like a table you might make for organizing your Pokemon cards or book collection!

# 🎯 Challenge 1: Create your first dataframe
print("🐾 Creating a dataframe about pets!")

# Create a simple dataframe about pets
pets <- data.frame(
  name = c("Fluffy", "Buddy", "Whiskers"),
  type = c("cat", "dog", "cat"),
  age = c(3, 5, 2)
)

# Look at our dataframe
print(pets)

# 💡 Understanding the parts:
print("\n🔮 Understanding what we just created:")
print("- Columns: name, type, age (like categories)")
print("- Rows: Each pet gets one row (like one card in your collection)")
print("- data.frame() is the magic function that creates tables")

# 🎯 Challenge 2: Create your own dataframe
print("\n👫 Creating a dataframe about your friends!")

# Make a dataframe about your friends (change the data to match your real friends!)
friends <- data.frame(
  name = c("Alex", "Sam", "Jordan"),
  favorite_color = c("blue", "red", "green"),
  age = c(12, 11, 13)
)

print(friends)

# 🎯 Challenge 3: Create a dataframe about anything!
print("\n🎬 Creating a dataframe about favorite movies!")

# Example: favorite movies
movies <- data.frame(
  title = c("Frozen", "Moana", "Encanto"),
  year = c(2013, 2016, 2021),
  rating = c(9, 10, 8)
)

print(movies)

# 🎯 Challenge 4: Let's explore our dataframes
print("\n🔍 Exploring our data:")

# How many rows and columns?
print(paste("Pets dataframe has", nrow(pets), "rows and", ncol(pets), "columns"))
print(paste("Friends dataframe has", nrow(friends), "rows and", ncol(friends), "columns"))

# What are the column names?
print(paste("Pet columns:", paste(names(pets), collapse = ", ")))
print(paste("Friend columns:", paste(names(friends), collapse = ", ")))

# ✨ Challenge: Create your own dataframe!
# Pick a topic you're interested in and create a dataframe with at least 3 columns and 3 rows

print("\n📝 Your turn to create a dataframe!")
print("Uncomment the lines below and fill in your own data:")

# my_topic <- data.frame(
#   column1 = c("___", "___", "___"),
#   column2 = c("___", "___", "___"),
#   column3 = c(___, ___, ___)
# )
# print(my_topic)

# 💡 Key Learning:
print("\n💡 Remember:")
print("- Dataframes are like spreadsheets with rows and columns")
print("- Each column is a category (name, type, age)")
print("- Each row is one item (one pet, one friend, one movie)")
print("- Think of them like organizing your Pokemon cards or book collection!")

print("🎉 Fantastic! You now understand the basics of data organization!")
print("🚀 Tomorrow we'll learn how to work with much larger datasets!")