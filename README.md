# MechaCar_Statistical_Analysis
## R programming for MechaCar Statistical Analysis

## Main Overview

* Load, clean up, and reshape datasets using tidyverse in R.
* Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
* Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
* Plot and identify distribution characteristics of a given dataset.
* Formulate null and alternative hypothesis tests for a given data problem.
* Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
* Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
* Implement and evaluate a chi-squared test for a given dataset.
* Identify key characteristics of A/B and A/A testing.
* Determine the most appropriate statistical test for a given hypothesis and dataset.


## Deliverable 1 :  Linear Regresson to Predict MPG

The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated using R in RStudio.

* RStudio
* dplyr Library

### Linear Regression
R script was applied to the dataset on several variables to get the following coefficients.

![LinearRegressionCall](https://user-images.githubusercontent.com/103727169/189399778-9a04f347-1ed9-4909-86b4-5aee0276a710.png)

### Summary of Linear Regresson model
A summary of the linear regression can be displayed to determine the quality of the dataset. In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

![LinearRegressionCoefficents](https://user-images.githubusercontent.com/103727169/189400885-e9756d11-cf75-4a07-bc27-37ab027e9b16.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.
  
  Coefficients:
  mpg: 0 < .05, statistically significant, non-random amount of variance
  vehicle length: 0 < .05, statistically significant, non-random amount of variance
  vehicle weight: .08 > .05 not statistically significant, random amount of variance
  spoiler angle: .31 > .05 not statistically significant, random amount of variance
  ground clearance: 0 > .05 statistically significant, non-random amount of variance
  AWD: .19>=.05 not statistically significant, random amount of variance

  In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.
  
* Is the slope of the linear model considered to be zero? Why or why not?
Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:
  
  Coefficients:
vehicle length: 6.267
vehicle weight: .001
spoiler angle: .069
ground clearance: 3.546
AWD: -3.411

  The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.
  
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.

## Deliverable 2 : Summary Staistics on Suspension Coils

### Manufacturing Lot Summary

Below is the summary statistics of all of the manufacturing lots. The mean is 1498.78 for this sample and the population mean was determined to be 1500.

![total_summary](https://user-images.githubusercontent.com/103727169/189408047-63cff3ef-8427-4293-8904-8d4cd12e0708.png)

### Summary by Manufacturing Lot Number

The means of the lot numbers are similar to the population mean and the sample mean.

![total_summary_groupby](https://user-images.githubusercontent.com/103727169/189408238-eec61f66-69d7-4932-86f7-5156d28e190d.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.






