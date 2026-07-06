# PA7_Money.R
# Caleb Money
# 7/5/2026
# Make an R script to calculate various statistics using the length of grass

# Define mean, variance, standard deviation
mean_value <- 10  # Mean blade length (mm)
variance_value <- 2
sd_value <- sqrt(variance_value) # Standard deviation of length (mm)

# Probability that a blade of grass is between 9.5 and 11mm
length_upper <- 11
length_lower <- 9.5
prob_between <- pnorm(length_upper,mean_value,sd_value) - 
 pnorm(length_lower,mean_value,sd_value)

# Standardize 9.5 and 11mm (Z-scores) and show probability
z_upper <- (length_upper - mean_value)/ sd_value
z_lower <- (length_lower - mean_value)/ sd_value

prob_z_scores <- pnorm(z_upper) -
  pnorm(z_lower)

# Blade length below shortest 2.5%
quantile <- 0.025
length_shortest_percent <- qnorm(quantile, mean_value, sd_value)

# Standardize length below shortest 2.5%
z_length_shortest <- (length_shortest_percent - mean_value)/ sd_value

# Output results
cat("Probability blade is between 9.5 and 11 mm:", 
    prob_between, "\n")
cat("Probability from Z-scores for 9.5 and 11 mm:", 
    prob_z_scores, "\n")
cat("Blade length below shortest 2.5%:", 
    length_shortest_percent, "mm\n")
cat("Z-score of shortest 2.5% blade:",
    z_length_shortest, "\n")