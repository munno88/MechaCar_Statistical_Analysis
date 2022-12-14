# MechaCar_Statistical_Analysis
![1634954664825](https://user-images.githubusercontent.com/103727169/189503360-8da7344a-d822-4e89-b83c-0c90808a4c3b.jpg)
***
## R programming for MechaCar Statistical Analysis

## Main Overview

&#x1F539; Load, clean up, and reshape datasets using tidyverse in R.

&#x1F538; Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.

&#x1F539; Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.

&#x1F538; Plot and identify distribution characteristics of a given dataset.

&#x1F539; Formulate null and alternative hypothesis tests for a given data problem.

&#x1F538; Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.

&#x1F539; Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.

&#x1F538; Implement and evaluate a chi-squared test for a given dataset.

&#x1F539; Identify key characteristics of A/B and A/A testing.

&#x1F538; Determine the most appropriate statistical test for a given hypothesis and dataset.


## Deliverable 1 :  Linear Regresson to Predict MPG

The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated using R in RStudio.

&#x1F539; RStudio

&#x1F538; dplyr Library

### Linear Regression
R script was applied to the dataset on several variables to get the following coefficients.

![LinearRegressionCall](https://user-images.githubusercontent.com/103727169/189502751-925da3a9-0afb-45b6-b979-6d83d581df97.png)


### Summary of Linear Regresson model
A summary of the linear regression can be displayed to determine the quality of the dataset. In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

![LinearRegressionCoefficents](https://user-images.githubusercontent.com/103727169/189502828-bb473fc2-925b-442c-956c-72109d3d62d0.png)



&#x1F539; Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.
  
  Coefficients:
  mpg: 0 < .05, statistically significant, non-random amount of variance
  vehicle length: 0 < .05, statistically significant, non-random amount of variance
  vehicle weight: .08 > .05 not statistically significant, random amount of variance
  spoiler angle: .31 > .05 not statistically significant, random amount of variance
  ground clearance: 0 > .05 statistically significant, non-random amount of variance
  AWD: .19>=.05 not statistically significant, random amount of variance

  In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.
  
&#x1F539; Is the slope of the linear model considered to be zero? Why or why not?
Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:
  
  Coefficients:
vehicle length: 6.267
vehicle weight: .001
spoiler angle: .069
ground clearance: 3.546
AWD: -3.411

  The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.
  
&#x1F539; Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
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

This very simple boxplot illustrates the differences between the lots:

![ggplotcolor](https://user-images.githubusercontent.com/103727169/189501473-3c71200c-9028-48c7-84ff-1d7ba687b723.png)

## Deliverable 3 : T-Tests on Suspension Coils

### T-Tests for All Lots

All Manufacturing Lots: p-value = 1, alpha = .05

1 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![t-testforalllot](https://user-images.githubusercontent.com/103727169/189421796-7d963499-4238-4b20-a85f-f90898c13392.png)

### T-Test for Lot 1

Lot 1: p-value = 1.568e-11, alpha = .05

1.568e-11 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![t-testlot1](https://user-images.githubusercontent.com/103727169/189422001-8610a255-68e1-42c3-8d05-a0c10be48e60.png)

### T-Test for Lot 2

Lot 2: p-value = .0005911, alpha = .05

.0005911 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![t-testlot2](https://user-images.githubusercontent.com/103727169/189422248-3112f27c-4157-4a48-a7df-228222bca723.png)


### T-Test for Lot 3

Lot 3: p-value = .1589, alpha = .05

.1589 < .05, which means it is statistically significant from the normal distribution and normality cannot be assumed. However, the mean falls within the 95% confidence interval.

![t-testlot3](https://user-images.githubusercontent.com/103727169/189422418-004cb5b2-dced-4891-9594-8b743b8a4c65.png)


The overall manufacturing, Lot 1, and Lot 2 show a normal distribution. Therefore, there is not sufficient evidence to reject the null hypothesis, which shows the two means are statistically similar.

## Deliverable 4 : Study Design: MechaCar vs Competition

When comparing MechaCar to its competitor???s other metrics that could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, or safety rating.

&#x1F538; What metric or metrics are you going to test?
The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers.

&#x1F539; What is the null hypothesis or alternative hypothesis?
The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

&#x1F538; What statistical test would you use to test the hypothesis? And why?
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.

&#x1F539; What data is needed to run the statistical test?
A random sample of n > 30 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.















