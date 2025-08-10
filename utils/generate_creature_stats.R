# Perfect Magical Creatures Stats Generator
# Dragon: New rejection sampling method (perfect normal)
# Unicorn & Phoenix: Original working methods

set.seed(42)

# Dragons - TRUE Normal Distribution using rejection sampling (KEEP THIS!)
generate_bounded_normal <- function(n, mean, sd, min_val, max_val) {
  result <- numeric(n)
  count <- 0
  
  while(count < n) {
    # Generate more samples than needed
    samples <- rnorm(n * 2, mean = mean, sd = sd)
    # Keep only those within bounds
    valid_samples <- samples[samples >= min_val & samples <= max_val]
    
    # Add valid samples to result
    needed <- min(length(valid_samples), n - count)
    if(needed > 0) {
      result[(count + 1):(count + needed)] <- valid_samples[1:needed]
      count <- count + needed
    }
  }
  return(result)
}

# Dragons - Perfect normal distribution within bounds
dragons <- data.frame(
  creature_id = 1:1000,
  creature_type = "dragon",
  power_level = round(generate_bounded_normal(1000, mean=50, sd=12, min_val=25, max_val=75))
)

# Unicorns - Left Skewed (0-100)
# Using beta distribution with shape1 > shape2 for left skew
unicorns <- data.frame(
  creature_id = 1001:2000,
  creature_type = "unicorn", 
  power_level = round(rbeta(1000, shape1 = 8, shape2 = 2) * 100)
)

# Phoenix - Right Skewed (0-100)
# Using beta distribution with shape1 < shape2 for right skew
phoenixes <- data.frame(
  creature_id = 2001:3000,
  creature_type = "phoenix",
  power_level = round(rbeta(1000, shape1 = 2, shape2 = 8) * 100)
)


# Combine all creatures
all_creatures <- rbind(dragons, unicorns, phoenixes)


# Save to CSV
write.csv(all_creatures, "docs/day04/datasets/magical_creatures_stats.csv", row.names = FALSE)
