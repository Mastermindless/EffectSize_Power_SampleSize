# Statistical tests for Cohen's D, POWER, and SAMPLE Size for two groups

# Set working directory
setwd("~/Desktop/your_folder")

# Load necessary libraries
# install.packages("lsr")  # Uncomment if the package is not installed
library(lsr)
# install.packages("pwr")  # Uncomment if the package is not installed
library(pwr)
# install.packages("misty")  # Uncomment if the package is not installed
library(misty)

# Load data
data1 <- read.csv("sample_data.csv", header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "")
head(data1)

### Effect Size Calculation (two groups)
# Calculate Cohen's D effect size for the two groups
conc_mod_cohenD <- cohensD(AUC ~ conc, data = data1)
conc_mod_cohenD

### Power Analysis (two groups)
# Perform power analysis based on Cohen's D effect size
power_test <- pwr.p.test(h = conc_mod_cohenD,
                         sig.level = 0.05,
                         power = 0.80,
                         alternative = "two.sided")

power_test
# Output the power analysis results to a text file
writeLines(capture.output(power_test), "PowerAnalysis.txt")

### Welch T-test (two groups)
# Perform Welch's t-test for the two groups
t_test <- test.welch(AUC ~ conc, data = data1, alternative = "two.sided")

# Output the Welch's t-test results to a text file
writeLines(capture.output(t_test), "Welchs_tTest.txt")

### Boxplot
# Generate a boxplot for the two groups
boxplot(AUC ~ conc, data = data1)

### Session Info
# Output session information to a text file
writeLines(capture.output(sessionInfo()), "full_sessionInfo.txt")

# End of the script