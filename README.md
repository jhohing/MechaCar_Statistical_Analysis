# MechaCar_Statistical_Analysis
Statistics and R

## Main Overview 
1. Load, clean up, and reshape datasets using tidyverse in R.
2. Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
3. Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
4. Plot and identify distribution characteristics of a given dataset.
5. Formulate null and alternative hypothesis tests for a given data problem.
6. Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
7. Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
8. Implement and evaluate a chi-squared test for a given dataset.
9. Identify key characteristics of A/B and A/A testing.
10. Determine the most appropriate statistical test for a given hypothesis and dataset.

## Linear Regression to Predict MPG
The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables.  The linear regression was calculated using R in RStudio. 
1. RStudio 2022.12.0+353 
2. dplyr library v.1.0.10

### Linear Regression
R script was applied to the dataset on several variables to get the following coefficients.

![lin_reg](https://user-images.githubusercontent.com/74940620/215378155-7cbd64f1-848f-4c71-b9cd-ada026d2b696.png)

### Summary of Linear Regression model
A summary of the linear regression can be displayed to determine the quality of the dataset.  In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

![sum_lin_reg](https://user-images.githubusercontent.com/74940620/215378789-315d092b-f6a3-487a-9972-5ef48169ddd2.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?       
A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.

Coefficients:      
mpg: 0 < .05, statistically significant, non-random amount of variance     
vehicle length: 0 < .05, statistically significant, non-random amount of variance     
vehicle weight: .08 > .05 not statistically significant, random amount of variance     
spoiler angle: .31 > .05 not statistically significant, random amount of variance    
ground clearance: 0 > .05 statistically significant, non-random amount of variance    
AWD: .19>=.05 not statistically significant, random amount of variance

In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.

2. Is the slope of the linear model considered to be zero? Why or why not?    
Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:    

Coefficients:    
vehicle length: 6.267    
vehicle weight: .001   
spoiler angle: .069   
ground clearance: 3.546   
AWD: -3.411    

The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?    
R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset.  However, r-squared is not the only consideration for effectiveness.  There may be other variables not included in the dataset contributing to the variation in the mpg. 

## Summary Statistics on Suspension Coils
### Manufacturing Lot Summary
Below is the summary statistics of all of the manufacturing lots.  The mean is 1498.78 for this sample and the population mean was determined to be 1500.

![tot_sum](https://user-images.githubusercontent.com/74940620/215629732-2f68df4c-946a-4dcc-986f-429cc86a6ead.png)

### Summary by Manufacturing Lot Number
The means of the lot numbers are similar to the population mean and the sample mean.

![lot_sum](https://user-images.githubusercontent.com/74940620/215629810-a9fa5085-d125-43c2-be0a-0373a302e3f8.png)

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?      
The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI.  However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high.  Lot 3 shows a variance of 170 > 100 and does not meet the design specifications.  Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.

## T-Tests on Suspension Coils
### T-test for all Lots
All Manufacturing Lots: p-value = .6028, alpha = .05   
.60 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed.  The mean falls within the 95% confidence interval.

![tot_t_test](https://user-images.githubusercontent.com/74940620/215636684-a996640d-468f-4ab2-b49d-ad33becda1a1.png)

### T-test for Lot 1
Lot 1: p-value = 1, alpha = .05    
1 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed.  The mean falls within the 95% confidence interval.

![lot_1_t_test](https://user-images.githubusercontent.com/74940620/215636745-cc9626d8-2e74-4a4a-9783-75a9a118d670.png)

### T-test for Lot 2
Lot 2: p-value = .6072, alpha = .05 
.60 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed.  The mean falls within the 95% confidence interval.

![lot_2_t_test](https://user-images.githubusercontent.com/74940620/215636844-5d4dab55-e083-4bb4-91fc-fd5876dc70b9.png)

### T-test for Lot 3
Lot 3: p-value = .04168, alpha = .05   
.04 < .05, which means it is statistically significant from the normal distribution and normality cannot be assumed.  However, the mean falls within the 95% confidence interval.

![lot_3_t_test](https://user-images.githubusercontent.com/74940620/215636947-bf3b2d67-50e1-4e5a-ac25-52859a808a18.png)

The overall manufacturing, Lot 1, and Lot 2 show a normal distribution.  Therefore, there is not sufficient evidence to reject the null hypothesis, which shows the two means are statistically similar.

## Study Design: MechaCar vs Competition
When comparing MechaCar to its competitors, the metrics that could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, and/or safety rating.

1. What metric or metrics are you going to test?   
The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers. 

2. What is the null hypothesis or alternative hypothesis?    
The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

3. What statistical test would you use to test the hypothesis? And why?     
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.

4. What data is needed to run the statistical test?     
A random sample of n > 30 for MechaCar and their competitors would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.
