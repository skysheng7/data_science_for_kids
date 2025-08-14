## Day 4 – Spell 3: Sampling & Bootstrap Recording Sheet
Use this sheet to record your counts and percentages during the Black vs. White Sheep sampling activity.

---

### 1. Team Info
- Team name: _______________________
- Names: ___________________________
- Date: __________  Class: _________

---

### 2. Initial Vision Phase (First Real Sample)
Write what you observe in your first sample.

- Total sample size (n): __________
- Black sheep count: __________
- White sheep count: __________
- % Black sheep: __________ %

How to compute % Black: (Black count / (Black + White)) × 100

---

### 3. Bootstrap Prophecy Phase (Pretend Samples)
For each pretend sample, write the counts and compute % Black.

| Sample # | Black count | White count | Total n | % Black |
|---|---:|---:|---:|---:|
| 1 | _____ | _____ | _____ | _____ % |
| 2 | _____ | _____ | _____ | _____ % |
| 3 | _____ | _____ | _____ | _____ % |
| 4 | _____ | _____ | _____ | _____ % |
| 5 | _____ | _____ | _____ | _____ % |
| 6 | _____ | _____ | _____ | _____ % |
| 7 | _____ | _____ | _____ | _____ % |
| 8 | _____ | _____ | _____ | _____ % |
| 9 | _____ | _____ | _____ | _____ % |
| 10 | _____ | _____ | _____ | _____ % |

Optional notes:

____________________________________________________________________

---

### 4. Confidence Prophecy Phase (90% Confidence Interval)

Use the R code to calculate 90% confidence interval

```
# enter the percentage of black sheep in each of your bootstrapped sample below: 
# for example:
black_percentage <- c(0.5, 0.6, 0.7)

# calculate 90% confidence interval
confidence_interval <- quantile(black_percentage, 
                               probs = c(0.5, 0.95))
```

---

### 5. Royal Registry (Final Answer to Share)
- Team name: __________________
- “We are 90% confident that the true % of black sheep is between ______ % and ______ %.”

