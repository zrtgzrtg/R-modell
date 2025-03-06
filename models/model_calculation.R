.libPaths("~/R/libs")
# Load necessary package
if (!requireNamespace("ggplot2", quietly = TRUE)) install.packages("ggplot2")

# Generate example data
set.seed(123)  # For reproducibility
n <- 100
x1 <- rnorm(n, mean = 5, sd = 2)
x2 <- rnorm(n, mean = 10, sd = 3)
y <- 3 + 2*x1 - x2 + rnorm(n, sd = 1.5)  # y depends on x1 and x2

data <- data.frame(y, x1, x2)

# Run a simple linear regression model
model <- lm(y ~ x1 + x2, data = data)

# Print model summary
print(summary(model))

# Save model to a file
saveRDS(model, "model_results.rds")

# Optional: Save the generated data for testing
write.csv(data, "data.csv", row.names = FALSE)

cat("Model calculation complete. Results saved to model_results.rds\n")

