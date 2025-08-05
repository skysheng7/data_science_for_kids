# 🔮 Day 2 - Spell 5: ggplot2 Meets Loops

# 🎈 Activity: Loop-Powered Visualizations
# 🎨 Magic Combo: Use loops to create multiple plots automatically!

# Load the magic plotting package
library(ggplot2)

# Create some sample data about magical creatures
creatures <- data.frame(
  name = c("Dragon", "Unicorn", "Phoenix", "Griffin", "Pegasus"),
  magic_power = c(95, 88, 92, 78, 85),
  flying_speed = c(85, 70, 98, 88, 95),
  friendship_level = c(30, 95, 60, 55, 80)
)

print("🐉 Our Magical Creatures Data:")
print(creatures)

# 🎯 Challenge 1: Create individual plots using a loop
# Let's make a separate bar chart for each creature's magic power

print("\n📊 Creating individual plots...")
for (i in 1:nrow(creatures)) {
  creature_data <- creatures[i, ]
  
  # Create a plot for this creature
  plot <- ggplot(creature_data, aes(x = name, y = magic_power)) +
    geom_bar(stat = "identity", fill = "purple") +
    labs(title = paste("Magic Power of", creature_data$name),
         y = "Magic Power Level") +
    theme_minimal() +
    ylim(0, 100)
  
  print(plot)
  
  # Add a pause so we can see each plot
  cat("Press Enter to see the next plot...")
  readline()
}

# 🎯 Challenge 2: Create different types of plots in a loop
plot_types <- c("magic_power", "flying_speed", "friendship_level")
colors <- c("purple", "blue", "pink")

print("\n🎨 Creating different attribute plots...")
for (i in 1:length(plot_types)) {
  attribute <- plot_types[i]
  color <- colors[i]
  
  plot <- ggplot(creatures, aes_string(x = "name", y = attribute)) +
    geom_bar(stat = "identity", fill = color) +
    labs(title = paste("Creature", gsub("_", " ", attribute)),
         x = "Creature", 
         y = paste(gsub("_", " ", attribute), "Level")) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
  print(plot)
  cat("Press Enter for next plot type...")
  readline()
}

# ✨ Advanced Challenge: Create scatter plots comparing different attributes
print("\n✨ Scatter Plot Magic...")

# Compare pairs of attributes
attribute_pairs <- list(
  c("magic_power", "flying_speed"),
  c("flying_speed", "friendship_level"),
  c("magic_power", "friendship_level")
)

for (pair in attribute_pairs) {
  x_attr <- pair[1]
  y_attr <- pair[2]
  
  plot <- ggplot(creatures, aes_string(x = x_attr, y = y_attr)) +
    geom_point(size = 4, color = "red") +
    geom_text(aes(label = name), vjust = -1) +
    labs(title = paste("Relationship:", gsub("_", " ", x_attr), "vs", gsub("_", " ", y_attr)),
         x = gsub("_", " ", x_attr),
         y = gsub("_", " ", y_attr)) +
    theme_minimal() +
    xlim(0, 100) + ylim(0, 100)
  
  print(plot)
  cat("Press Enter for next comparison...")
  readline()
}

# 🎯 Your Turn: Create your own creature and add it to the data!
# Fill in the blanks:
new_creature <- data.frame(
  name = "...",           # Your creature's name
  magic_power = ...,      # Number from 1-100
  flying_speed = ...,     # Number from 1-100  
  friendship_level = ...  # Number from 1-100
)

# Add your creature to the dataset
all_creatures <- rbind(creatures, new_creature)

# Make a plot with YOUR creature included!
final_plot <- ggplot(all_creatures, aes(x = name, y = magic_power)) +
  geom_bar(stat = "identity", fill = "rainbow") +
  labs(title = "Magic Power of All Creatures (Including Yours!)",
       x = "Creature", y = "Magic Power") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(final_plot)

# 💡 Memory Tip:
# - Use loops to create multiple similar plots
# - aes() maps data to visual elements (x, y, color, size)
# - geom_bar() creates bar charts, geom_point() creates scatter plots
# - Always give your plots clear titles and labels!