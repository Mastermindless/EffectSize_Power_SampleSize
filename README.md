# Statistical Tests for Cohen's D, Power, and Sample Size for Two Groups

This repository contains an R script that performs statistical tests including the calculation of Cohen's D, power analysis, and Welch's t-test for two groups using data from a pilot study. Additionally, the script generates a boxplot for visual representation and outputs session information.

Note, sample data in sample_data.csv are not the real data.

## Contents

- `statistical_tests.R`: The main R script containing the statistical analyses and data visualizations.
- `sample_data.csv`: Example data file used in the script.
- `PowerAnalysis.txt`: Output file containing the results of the power analysis.
- `Welchs_tTest.txt`: Output file containing the results of Welch's t-test.
- `full_sessionInfo.txt`: Output file containing the full session information.

## Requirements

The following R packages are required to run the script:

- `lsr`
- `pwr`
- `misty`

You can install these packages using the following commands in R:

```r
install.packages("lsr")
install.packages("pwr")
install.packages("misty")
