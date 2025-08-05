# 🔮 Day 1 - Spell 11: Temperature Zone Detective (Real World >= <= Examples!)

# 🌡️ Oda's temperature zone detector
temperature <- 22  # In Celsius

if (temperature <= 0) {
  print("🧊 FREEZING! Time for hot cocoa and warm blankets!")
  print("🦦 Oda is wearing a thick winter coat!")
} else if (temperature >= 1 & temperature <= 10) {
  print("🥶 COLD! Perfect sweater weather!")
} else if (temperature >= 11 & temperature <= 20) {
  print("😊 COOL! Great for a light jacket!")
} else if (temperature >= 21 & temperature <= 30) {
  print("☀️ WARM! Perfect for playing outside!")
} else if (temperature >= 31) {
  print("🔥 HOT! Time for swimming and ice cream!")
  print("🦦 Oda jumps in the river to cool off!")
} else {
  print("🤔 Something seems fishy with this temperature...")
}

# 🎈 Activity: Weather Station!
# 1. Try these temperatures: -5, 5, 15, 25, 35
# 2. **Real World:** Check today's actual temperature and see what Oda says!
# 3. **Question:** Why do we use `>=` and `<=` instead of just `>` and `<?
# 4. **Errors:** What input would cause R to generate errors?

# ✨ Test different temperatures:
# temperature <- -5   # Freezing cold?
# temperature <- 5    # Cold weather?
# temperature <- 15   # Cool day?
# temperature <- 25   # Warm day?
# temperature <- 35   # Very hot?

# 🤔 Think about these questions:
# - What happens at exactly 0 degrees?
# - What happens at exactly 21 degrees?
# - Why do we need both >= and <= for ranges?
# - What would happen if we used only > and <?
# - Which condition would 20.5 degrees fall into?

# 🌡️ Real World Challenge:
# Look up today's temperature in your city and test it!
# What does Oda recommend for today's weather?
