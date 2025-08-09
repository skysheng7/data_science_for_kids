# 🔮 Day 3 - Spell 1B: Clean Our Real-World Creatures Data (Optional)

# This spell cleans the raw form responses in datasets/creature_of_sky.csv
# and saves a clean file datasets/creatures.csv for the rest of today's activities.

########################################################
# 🎒 Load toolbox

library(dplyr)

########################################################
# 📥 Load raw data (from Google Form export)

raw <- read.csv("datasets/creature_of_sky.csv", stringsAsFactors = FALSE)

########################################################
# 🧼 Rename columns to simple, consistent names

clean_names <- raw %>%
  rename(
    wizard_name = What.is.your.wizard.name.,
    creature_name = What.is.your.magical.creature.s.name.,
    creature_type = What.type.of.creature.is.it.,
    creature_age_raw = How.old.is.your.creature..please.enter.number.only..,
    magic_power_raw = On.a.scale.of.1.10..how.powerful.is.its.magic.,
    has_wings_raw = Does.your.creature.have.wings.,
    element = What.is.its.primary.magical.element.,
    superpower = What.superpower.does.this.creature.has.
  )

########################################################
# 🔧 Convert types and tidy text (all-lowercase values)

cleaned <- clean_names %>%
  mutate(
    creature_name = tolower(trimws(as.character(creature_name))),
    creature_name = ifelse(is.na(creature_name) | creature_name == "", NA, creature_name),

    creature_type = tolower(trimws(as.character(creature_type))),
    creature_type = ifelse(is.na(creature_type) | creature_type == "", NA, creature_type),

    # Age: coerce to number, drop negative or obviously invalid ages
    creature_age = suppressWarnings(as.numeric(gsub("[^0-9\\-]", "", creature_age_raw))),
    creature_age = ifelse(is.na(creature_age) | creature_age < 0 | creature_age > 1000, NA, creature_age),

    # Magic power: coerce to 1-10 range
    magic_power = suppressWarnings(as.numeric(gsub("[^0-9]", "", magic_power_raw))),
    magic_power = ifelse(is.na(magic_power), NA, pmin(pmax(magic_power, 1), 10)),

    # Wings: normalize to Yes/No
    has_wings = tolower(trimws(as.character(has_wings_raw))),
    has_wings = ifelse(has_wings %in% c("yes", "y", "true", "1"), "yes",
                 ifelse(has_wings %in% c("no", "n", "false", "0"), "no", NA)),

    element = tolower(trimws(as.character(element))),
    wizard_name = tolower(trimws(as.character(wizard_name))),
    superpower = tolower(trimws(as.character(superpower)))
  ) %>%
  select(
    wizard_name, creature_name, creature_type, creature_age,
    magic_power, has_wings, element, superpower
  )

# ensure column names are lowercase (already simple names, this is just a safety net)
names(cleaned) <- tolower(names(cleaned))

########################################################
# 🚮 Remove rows with missing essentials

before_n <- nrow(cleaned)

cleaned <- cleaned %>%
  filter(!is.na(creature_name),
         !is.na(creature_type),
         !is.na(creature_age),
         !is.na(magic_power))

after_n <- nrow(cleaned)
removed_n <- before_n - after_n

print(paste("✅ Kept", after_n, "clean rows; removed", removed_n, "rows with bad/missing values"))

########################################################
# 💾 Save the clean dataset for use in all other spells

write.csv(cleaned, "datasets/creatures.csv", row.names = FALSE)
print("💾 Saved clean data to datasets/creatures.csv")
print(head(cleaned, 3))

########################################################
# 💡 Memory Tip:
# - rename() gives columns simple names
# - as.numeric() turns number-like text into numbers
# - filter() keeps only valid rows
# - write.csv() saves your cleaned data
