# 🔮 Day 1 - Spell Solutions 
*Oda the Data Otter's Magic Answer Key! 🦦✨*

---

## ✨ Spell 1: Simple If-Else Magic - Solutions

### Activity Questions & Answers:

**1. Change `my_favorite_number` to different values (try 3, 10, 1)**

- `my_favorite_number <- 3`: Output → "💭 That's a nice small number!" (because 3 is not > 5)
- `my_favorite_number <- 10`: Output → "🎉 Wow! That's a big number!" (because 10 > 5)  
- `my_favorite_number <- 1`: Output → "💭 That's a nice small number!" (because 1 is not > 5)

**2. Can you predict the message before running it?**
- If the number is greater than 5 → "big number" message
- If the number is 5 or less → "small number" message

---

## ✨ Spell 2: Multiple Choices - Solutions

### Activity Questions & Answers:

**1. Change `favorite_color` to your actual favorite color**
- If your color is "red", "blue", or "green" → specific mood message
- Any other color → "✨ You have a unique and magical taste!"

**2. If your color isn't there, what message do you get?**
- You get the default message: "✨ You have a unique and magical taste!"

**3. Extension: Add your favorite color with a special message**
```R
# 🌈 Oda's color mood detector with added purple option
favorite_color <- "purple"

if (favorite_color == "red") {
  print("🔥 You like bold and exciting adventures!")
} else if (favorite_color == "blue") {
  print("🌊 You love calm and peaceful vibes!")
} else if (favorite_color == "green") {
  print("🌱 You enjoy nature and growing things!")
} else if (favorite_color == "purple") { # NEW line added to include a new color purple
  print("💜 You love magic and mystery!") # NEW line added
} else {
  print("✨ You have a unique and magical taste!")
}
```

**Expected Output:**
```
[1] "💜 You love magic and mystery!"
```

---

## ✨ Spell 3: Number Range Detective - Solutions

### Activity Questions & Answers:

**1. Predict which otter for each number:**
- `mystery_number <- 5`: "🐣 Tiny number - like a baby otter!" (5 < 10)
- `mystery_number <- 25`: "🦦 Medium number - like a young otter!" (25 < 50)
- `mystery_number <- 75`: "🏔️ Big number - like a mountain otter!" (75 < 100)
- `mystery_number <- 150`: "🚀 Huge number - like a space otter!" (150 >= 100)

**2. What happens with 0 or negative numbers?**
- `mystery_number <- 0`: "🐣 Tiny number - like a baby otter!" (0 < 10)
- `mystery_number <- -5`: "🐣 Tiny number - like a baby otter!" (-5 < 10)

**3. Why check smaller numbers first?**
- R checks conditions from top to bottom and stops at the first TRUE condition
- If we checked larger ranges first, smaller numbers might never reach their specific conditions

---

## ✨ Spell 4: AND Condition Magic - Solutions

### Activity Questions & Answers:

**1. Test weather combinations:**
- `temperature <- 15, weather <- "sunny"`: "🏠 Maybe it's a good day to stay inside..." (15 is not > 20)
- `temperature <- 25, weather <- "rainy"`: "🏠 Maybe it's a good day to stay inside..." (weather is not "sunny")  
- `temperature <- 30, weather <- "sunny"`: "🏖️ Perfect day for swimming and playing!" (both conditions true)

**2. Challenge Questions:**
- **Only temperature good but weather bad**: No perfect day (need BOTH conditions)
- **Only weather good but temperature bad**: No perfect day (need BOTH conditions)
- **Why need BOTH true**: AND (&) requires ALL conditions to be true

**3. 🎯 Experiment: Try creating your own perfect day conditions:** Example output:

```R
temperature <- 25
weather <- "sunny"
wind_speed <- 60

if ((temperature > 20) & (weather == "sunny") & (wind_speed < 10)) {
  print("🏖️ Perfect day for swimming and playing!")
  print("🦦 Oda is super happy!")
} else if (wind_speed > 50){
  print("💨 Wow I'm being blown away, hide in the bunk!")
}else {
  print("🏠 Maybe it's a good day to stay inside and code!")
}
```

**Expected Output:**
```
[1] "💨 Wow I'm being blown away, hide in the bunk!"
```
*(Because wind_speed = 60, which is > 50, so the first condition fails and the second condition is true)*
---

## ✨ Spell 5: OR Condition Magic - Solutions

### Activity Questions & Answers:

**1. Test different snacks:**
- `snack <- "apple"`: "🥰 Yummy! Oda loves healthy snacks!" (apple is in healthy list)
- `snack <- "banana"`: "🥰 Yummy! Oda loves healthy snacks!" (banana is in healthy list)
- `snack <- "cookie"`: "🍪 Sweet treat! But just a little bit!" (cookie is in sweet list)
- `snack <- "pizza"`: "🤔 Hmm, Oda isn't sure about this snack..." (not in any list)

**2. What happens with "Apple" vs "apple"?**
- `snack <- "Apple"`: "🤔 Hmm, Oda isn't sure..." (R is case-sensitive - "Apple" ≠ "apple")

**3. Extension: Add more snacks**
```R
# 🍎 Oda's snack time detector with added protein category
snack <- "cheese"

if (snack == "apple" | snack == "banana" | snack == "carrot") {
  print("🥰 Yummy! Oda loves healthy snacks!")
  print("💪 This will give me energy for coding!")
} else if (snack == "cookie" | snack == "candy") {
  print("🍪 Sweet treat! But just a little bit!")
} else if (snack == "cheese" | snack == "nuts") {
  print("🧀 Protein power! Great for brain fuel!")
} else {
  print("🤔 Hmm, Oda isn't sure about this snack...")
}
```

**Expected Output:**
```
[1] "🧀 Protein power! Great for brain fuel!"
```

---

## ✨ Spell 6: Age Group Sorter - Solutions

### Activity Questions & Answers:

**1. Test different ages:**
- `age <- 5`: "🐣 Little explorer - just starting the adventure!" (5 < 6)
- `age <- 8`: "🧸 Young adventurer - ready for fun!" (6 ≤ 8 ≤ 9)
- `age <- 12`: "🧙‍♀️ Data wizard in training - that's you!" (10 ≤ 12 ≤ 14)
- `age <- 16`: "🚀 Teen tech master - almost ready to rule the world!" (15 ≤ 16 ≤ 18)
- `age <- 25`: "🎓 Wise adult - teaching the next generation!" (25 > 18)

**2. Edge cases:**
- `age <- 6`: "🧸 Young adventurer" (6 ≥ 6 is true)
- `age <- 14`: "🧙‍♀️ Data wizard in training" (14 ≤ 14 is true)

**3. Why use >= and <=?**
- To include the boundary ages (like exactly 6 or exactly 14)
- Makes sure no ages "fall through the cracks"

**4. 🎯 Challenge Solution: Age-Based Activity Sorter**
```R
# 🎯 Oda's Age-Based Activity Sorter - Perfect activities for each age group!
age <- 12  # Try different ages: 4, 7, 13, 16, 25

if (age < 6) {
  print("🐣 Little Explorer Activities:")
  print("🧸 Play with building blocks and stuffed animals")
  print("📚 Listen to picture book stories") 
  print("🎨 Finger painting and simple crafts")
  print("🎵 Sing-along songs and nursery rhymes")
} else if (age >= 6 & age <= 9) {
  print("🧸 Young Adventurer Activities:")
  print("🎮 Simple board games and puzzles")
  print("⚽ Team sports like soccer or basketball")
  print("🔬 Basic science experiments")
  print("🎭 Drama and pretend play")
} else if (age >= 10 & age <= 14) {
  print("🧙‍♀️ Data Wizard Activities:")
  print("💻 Learn coding and computer programming!")
  print("🎸 Learn musical instruments")
  print("📱 Create digital art and videos")
  print("🧩 Complex strategy games and escape rooms")
} else if (age >= 15 & age <= 18) {
  print("🚀 Teen Tech Master Activities:")
  print("🚗 Learn to drive and gain independence")
  print("💼 Part-time jobs and internships")
  print("🎓 Prepare for college and career planning")
  print("🌍 Volunteer work and community service")
} else {
  print("🎓 Wise Adult Activities:")
  print("👨‍🏫 Teach and mentor the next generation")
  print("💰 Career advancement and financial planning")
  print("🌿 Hobbies like gardening, cooking, or travel")
}

print(paste("🎂 Perfect activities for someone who is", age, "years old!"))
```

**Expected Output (for age = 12):**
```
[1] "🧙‍♀️ Data Wizard Activities:"
[1] "💻 Learn coding and computer programming!"
[1] "🎸 Learn musical instruments"
[1] "📱 Create digital art and videos"
[1] "🧩 Complex strategy games and escape rooms"
[1] "🎂 Perfect activities for someone who is 12 years old!"
```

---

## ✨ Spell 7: Multiple Actions Spell - Solutions

### Activity Questions & Answers:

**1. Test magic words:**
- `magic_word <- "abracadabra"`: Full classic magic show (4 actions)
- `magic_word <- "alakazam"`: Fireworks show (3 actions)
- `magic_word <- "hocus pocus"`: Unknown magic word message (2 actions)

**2. Why multiple print() statements?**
- Each print() creates a separate line of output
- Creates a sequence of actions that tell a story
- Makes the magic show feel more dramatic and realistic

**3. Creative Challenge: Add third magic word**
```R
# 🎪 Oda's magic show with multiple tricks including new "presto" magic
magic_word <- "presto"

if (magic_word == "abracadabra") {
  print("✨ *Sparkles appear in the air*")
  print("🎩 *A rabbit pops out of the hat*")
  print("🌟 *The crowd cheers loudly*")
  print("🦦 Oda takes a bow!")
} else if (magic_word == "alakazam") {
  print("💥 *Thunder sound effect*")
  print("🎆 *Colorful fireworks explode*")
  print("🦦 Oda does a backflip!")
} else if (magic_word == "presto") {
  print("🐰 *Magic rabbits hop everywhere*")
  print("🌈 *Rainbow appears in the sky*")
  print("🦦 Oda waves her magic wand!")
} else {
  print("😅 Oops! That's not a magic word Oda knows...")
  print("💡 Try 'abracadabra', 'alakazam', or 'presto'!")
}
```

**Expected Output:**
```
[1] "🐰 *Magic rabbits hop everywhere*"
[1] "🌈 *Rainbow appears in the sky*"
[1] "🦦 Oda waves her magic wand!"
```

---

## ✨ Spell 8: No Else Challenge - Solutions

### Activity Questions & Answers:

**1. Test point values:**
- `points <- 30`: Only "🎯 You have 30 points total!" (no achievements met)
- `points <- 60`: "👍 GOOD JOB! Keep practicing!" + total points (≥50 condition met)
- `points <- 80`: "⭐ AWESOME! You're doing great!" + "👍 GOOD JOB! Keep practicing!" + total points (≥75 and ≥50 met)
- `points <- 120`: All three achievements + total points (≥100, ≥75, ≥50 all met)

**2. Why multiple achievement messages?**
- Each `if` statement runs independently (no `else` to stop them)
- High scores qualify for multiple achievement levels simultaneously
- Like earning multiple badges in a game

**3. Minimum points for all achievements?**
- Need at least 100 points to trigger all three achievement conditions

---

## ✨ Spell 9: Code Order Magic - Solutions

### Activity Questions & Answers:

**1. Compare both versions:**

**Version 9A (Correct):**
- `position <- 1`: "🥇 GOLD MEDAL!"
- `position <- 2`: "🥈 SILVER MEDAL!"  
- `position <- 3`: "🥉 BRONZE MEDAL!"

**Version 9B (Wrong):**
- `position <- 1`: "👏 Good race! Keep practicing!" (WRONG!)
- `position <- 2`: "👏 Good race! Keep practicing!" (WRONG!)
- `position <- 3`: "👏 Good race! Keep practicing!" (WRONG!)

**2. Why Version 9B always says "Good race!"**
- First condition `position >= 1` is TRUE for positions 1, 2, and 3
- R stops at the first TRUE condition and never checks the others

**3. Which conditions never run in Version 2?**
- The `position == 1` and `position == 2` conditions never run
- Because `position >= 1` catches everything first

**Key Lesson:** Always check SPECIFIC conditions before GENERAL ones!

---

## ✨ Spell 10: String Detective - Solutions

### Activity Questions & Answers:

**1. Test different names:**
- `name <- "Jo"`: "📝 You have a nice short name!" (2 letters ≤ 4)
- `name <- "Elizabeth"`: "📚 Wow! You have a beautifully long name!" (9 letters ≥ 8)
- `name <- "Sam"`: "📝 You have a nice short name!" (3 letters ≤ 4)
- `name <- "Christopher"`: "📚 Wow! You have a beautifully long name!" (11 letters ≥ 8)

**2. What does nchar() do?**
- `nchar()` counts the number of characters (letters) in a text string
- `nchar("hello")` returns 5
- `nchar("R")` returns 1

**3. Why can't Oda find Mike? THE BIG PROBLEM!**
- When `name <- "Mike"`: 
  1. First condition: `nchar("Mike") <= 4` → `4 <= 4` → TRUE!
  2. R prints "📝 You have a nice short name!" and stops
  3. The Mike-finding condition never gets checked!

**4. How to fix it:**
```R
# 🔍 FIXED version - Oda can now find Mike! Check for Mike FIRST:
name <- "Mike"

if (name == "mike" | name == "Mike" | name == "Michael" | name == "michael"){
  print("👥 Hi Mike, long time no see! I've caught some clams today! 🌊 🐚 🦪")
} else if (nchar(name) <= 4){
  print("📝 You have a nice short name!")
} else if (nchar(name) >= 8) {
  print("📚 Wow! You have a beautifully long name!")
} else {
  print("✨ You have a perfectly medium-sized name!")
}

# Bonus: Count the letters in your name!
print(paste("🔢 Your name has", nchar(name), "letters!"))
```

**Expected Output:**
```
[1] "👥 Hi Mike, long time no see! I've caught some clams today! 🌊 🐚 🦪"
[1] "🔢 Your name has 4 letters!"
```
*(Now Oda can find Mike because we check for his name BEFORE checking the length!)*

---

## ✨ Spell 11: Temperature Zone Detective - Solutions

### Activity Questions & Answers:

**1. Test temperatures:**
- `temperature <- -5`: "🧊 FREEZING!" + winter coat message (-5 ≤ 0)
- `temperature <- 5`: "🥶 COLD! Perfect sweater weather!" (1 ≤ 5 ≤ 10)
- `temperature <- 15`: "😊 COOL! Great for a light jacket!" (11 ≤ 15 ≤ 20)
- `temperature <- 25`: "☀️ WARM! Perfect for playing outside!" (21 ≤ 25 ≤ 30)
- `temperature <- 35`: "🔥 HOT!" + swimming message (35 ≥ 31)

**2. Why use >= and <= instead of > and <?**
- To include exact boundary temperatures (like exactly 0°, 21°, etc.)
- Prevents temperatures from "falling between" categories
- `temperature <- 20` with `< 20` would not be caught by the "cool" category

**3. Edge cases:**
- `temperature <- 0`: "🧊 FREEZING!" (0 ≤ 0 is true)
- `temperature <- 21`: "☀️ WARM!" (21 ≥ 21 is true)
- `temperature <- 20.5`: "🤔 Something seems fishy with this temperature..."


---

## ✨ Spell 12: Magical Creatures - Solutions

### Activity Questions & Answers:

**1. Test different combinations:**
- `creature_size <- 15, creature_color <- "purple"`: "🧚‍♀️ You found a tiny fairy!"
- `creature_size <- 50, creature_color <- "gold"`: "🐉 You found a baby dragon!"
- `creature_size <- 50, creature_color <- "blue"`: "🦦 You found Oda the Otter!"
- `creature_size <- 150, creature_color <- "any"`: "👹 You found a friendly giant!"

**2. What happens with negative/zero size?**
- `creature_size <- 0`: "🐛 You found a magical bug!" (0 ≤ 20, not purple)
- `creature_size <- -5`: "🐛 You found a magical bug!" (-5 ≤ 20, not purple)

**3. How nested conditions work:**
- Outer condition checks size range first
- Inner conditions check color within that size range
- Like a decision tree: size → then color → then result

**4. Extension ideas:**
```R
# 🦄 EXTENDED Magical Creature Classifier with more sizes and colors
creature_size <- 150   # Size in cm
creature_color <- "silver" # Try different colors

if (creature_size <= 20) {
  if (creature_color == "purple") {
    print("🧚‍♀️ You found a tiny fairy!")
  } else if (creature_color == "invisible") {
    print("👻 You found an invisible sprite!")
  } else {
    print("🐛 You found a magical bug!")
  }
} else if (creature_size >= 21 & creature_size <= 100) {
  if (creature_color == "purple") {
    print("🦄 You found a unicorn!")
  } else if (creature_color == "gold") {
    print("🐉 You found a baby dragon!")
  } else if (creature_color == "rainbow") {
    print("🦄 You found a rainbow unicorn!")
  } else {
    print("🦦 You found Oda the Otter!")
  }
} else if (creature_size >= 101 & creature_size <= 200) {
  if (creature_color == "silver") {
    print("🐺 You found a silver wolf!")
  } else if (creature_color == "gold") {
    print("🐉 You found a teenage dragon!")
  } else {
    print("🐻 You found a friendly bear!")
  }
} else if (creature_size >= 201) {
  print("👹 You found a friendly giant!")
}

print(paste("📏 Your creature is", creature_size, "cm tall and", creature_color, "colored!"))
```

**Expected Output:**
```
[1] "🐺 You found a silver wolf!"
[1] "📏 Your creature is 150 cm tall and silver colored!"
```
*(Because creature_size = 150 falls in the 101-200 range, and creature_color = "silver" matches the wolf condition)*

**5. SUPER CHALLENGE: Flying Ability Extension**
```R
# 🚀 ULTIMATE Magical Creature Classifier with Flying Abilities!
creature_size <- 50      # Size in cm
creature_color <- "gold" # Try different colors  
creature_ability <- "flying"  # Try: "flying", "swimming", "invisible"

if (creature_size <= 20) {
  if (creature_color == "purple") {
    if (creature_ability == "flying") {
      print("🧚‍♀️✈️ You found a flying tiny fairy!")
      print("💫 She can sprinkle magic dust from the sky!")
    } else if (creature_ability == "invisible") {
      print("🧚‍♀️👻 You found an invisible tiny fairy!")
      print("🔍 You can only see sparkles where she flies!")
    } else {
      print("🧚‍♀️ You found a tiny fairy!")
    }
  } else {
    print("🐛 You found a magical bug!")
  }
} else if (creature_size >= 21 & creature_size <= 100) {
  if (creature_color == "gold") {
    if (creature_ability == "flying") {
      print("🐉✈️ You found a flying baby dragon!")
      print("🔥 It breathes fire while soaring through the clouds!")
    } else if (creature_ability == "swimming") {
      print("🐉🌊 You found a swimming baby dragon!")
      print("💧 It can breathe underwater and shoots water blasts!")
    } else {
      print("🐉 You found a baby dragon!")
    }
  } else if (creature_color == "purple") {
    if (creature_ability == "flying") {
      print("🦄✈️ You found a flying unicorn!")
      print("🌈 It leaves rainbow trails in the sky!")
    } else {
      print("🦄 You found a unicorn!")
    }
  } else {
    print("🦦 You found Oda the Otter!")
  }
} else if (creature_size >= 101) {
  if (creature_ability == "flying") {
    print("👹✈️ You found a flying friendly giant!")
    print("☁️ The ground shakes when it lands!")
  } else {
    print("👹 You found a friendly giant!")
  }
}

print(paste("📏 Your creature is", creature_size, "cm tall,", creature_color, "colored, and has", creature_ability, "ability!"))
```

**Expected Output:**
```
[1] "🐉✈️ You found a flying baby dragon!"
[1] "🔥 It breathes fire while soaring through the clouds!"
[1] "📏 Your creature is 50 cm tall, gold colored, and has flying ability!"
```
*(Because creature_size = 50, creature_color = "gold", and creature_ability = "flying" all match the flying baby dragon conditions)*

---

*🎉 Congratulations! You've mastered all 12 magical spells! You're now ready to cast decision-making magic in any R adventure! 🦦✨*