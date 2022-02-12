# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="880" alt="Screen Shot 2022-02-11 at 4 15 39 PM" src="https://user-images.githubusercontent.com/75961057/153687440-029faea1-a333-46e8-8222-2bf93b3c7c87.png">

1. Variance of a non-random variable is usually 0. Given this fact, the intercept, vehicle_length, and ground_clearance coeeficients can be said to provide a non-random amount of variance to the mpg values. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype.
2. The p-Value for this model, p-Value: 5.08e-08, is much smaller than the assumed significance level of 0.05. We are able to reject the null hypothesis because of the extremely small p-value which also indicates that the slope is not 0. 
3.This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.

**Summary statistics of all Manufacturing Lots**

<img width="349" alt="Screen Shot 2022-02-11 at 5 30 22 PM" src="https://user-images.githubusercontent.com/75961057/153690956-e73d811b-5eb9-49e9-b2c5-339596cfb279.png">

The variance of the coils for the entire Manufacturing unit is 62.29 PSI, which is well within the 100 PSI variance requirement.

**Summary Statistics for each Manufacturing Lot**

<img width="490" alt="Screen Shot 2022-02-11 at 5 33 25 PM" src="https://user-images.githubusercontent.com/75961057/153691063-56a7077e-d364-4492-a19f-94dabf128378.png">

However, when we look at each Manufacturing Lot, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively, but, Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. As the lots are chosen randomly, there is a possiblity that a third of the lot does not meet the necessary suspension coils requirement

