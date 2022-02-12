A statistical analysis using R to review the production data for insights for AutosRUs’ newest prototype, the MechaCar. 

# MechaCar_Statistical_Analysis

# Overview
A statistical analysis of AutosRUs’ newest prototype, the MechaCar, to review the production data for insights that may help the manufacturing team that is suffering from production troubles that are blocking the manufacturing team’s progress.

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Additional study reommendation - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

# Resources
**Data Sources:**
  * [MechCar_mpg.csv](https://github.com/ramya-ramamur/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
  * [Suspension_Coil.csv](https://github.com/ramya-ramamur/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)

**Software/Libraries:** RStudio-2021.09.2-382

# Results

## Linear Regression to Predict MPG

<img width="880" alt="Screen Shot 2022-02-11 at 4 15 39 PM" src="https://user-images.githubusercontent.com/75961057/153687440-029faea1-a333-46e8-8222-2bf93b3c7c87.png">

1. Variance of a non-random variable is usually 0. Given this fact, the intercept, vehicle_length, and ground_clearance coeeficients can be said to provide a non-random amount of variance to the mpg values. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype.
2. The p-Value for this model, p-Value: 5.08e-08, is much smaller than the assumed significance level of 0.05. We are able to reject the null hypothesis because of the extremely small p-value which also indicates that the slope is not 0. 
3. This linear model predicts mpg of MechaCar prototypes effectively: a relatively high r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model and a low p-value : 5.08e-08  means the model explains a lot of variation within the data and is significant

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.

**Summary statistics of all Manufacturing Lots**

<img width="349" alt="Screen Shot 2022-02-11 at 5 30 22 PM" src="https://user-images.githubusercontent.com/75961057/153690956-e73d811b-5eb9-49e9-b2c5-339596cfb279.png">

The variance of the coils for the entire Manufacturing unit is 62.29 PSI, which is well within the 100 PSI variance requirement.

**Summary Statistics for each Manufacturing Lot**

<img width="490" alt="Screen Shot 2022-02-11 at 5 33 25 PM" src="https://user-images.githubusercontent.com/75961057/153691063-56a7077e-d364-4492-a19f-94dabf128378.png">

However, when we look at each Manufacturing Lot, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively, but, Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. As the lots are chosen randomly, there is a possiblity that a third of the lot does not meet the necessary suspension coils requirement

## T-Tests on Suspension Coils

**T-Test on all Lots**

<img width="555" alt="Screen Shot 2022-02-12 at 8 11 04 AM" src="https://user-images.githubusercontent.com/75961057/153718985-6987f44f-53b5-42de-afda-7cae307a1761.png">

Because the p-value of our test (p-value = 0.06028) is more than alpha = 0.05, we fail to reject the null hypothesis of the test indicating the means are not statistically different (sample mean may be equivalent to the true population mean).

**T-Test on individual Lots**

<img width="736" alt="Screen Shot 2022-02-12 at 8 14 36 AM" src="https://user-images.githubusercontent.com/75961057/153719065-d27fec6f-926c-4d0b-87ab-707b4215bf4c.png">

* Lot 1 and 2's p-values are p-value = 1 and p-value = 0.6072, so we fail to reject the null hypothesis of the test indicating the means are not statistically different (sample mean may be equivalent to the true population mean). 
* However p-value for Lot3 p-value = 0.04168 is dramatically different indicating we should reject the null hypothesis. Lot 3's process should be examined to find out what features/factors are diffrent in this lot when compared to the other two. 

## Study Design: MechaCar vs Competition.

Americans rank fuel efficiency as the most important factor in their decision to purchase a vehicle, according to a recent study. The study, conducted by Kelton Global, found that 79 percent of those surveyed put fuel efficiency above safety and even price. 

An additional study that can be performed to determine MechaCar's performance comparison to its competition is on city and highway fuel efficiency.

MPG, or miles per gallon, is the distance, measured in miles, that a car can travel per gallon of fuel. MPG is also the primary measurement of a car's fuel efficiency: The higher a car's MPG, the more fuel efficient it is. 

**Metrics**
Collecting data for comparable models across all major manufacturers for past 3 years for the following metrics:

**Dependent Variable**
City and highway fuel efficiency - MPG- Miles per Gallon

**Independent Variables**
* Horse power
* Vehicle weight
* AWD capabilities
* Average Driving Speed
* Driver Behavior
* Condition of the Road
* Weather
* Traffic conditions

**Hypothesis: Null and Alternative**
After determining which factors are key for the MechaCar's genre:

Null Hypothesis (Ho): MechaCar's MPG is comparable or better than its competitors.
Alternative Hypothesis (Ha): MechaCar's MPG is NOT comparable or better than its competitors.

**Statistical Method:** 
A multiple linear regression can be used to determine the factors that have the highest correlation/predictability with the City and highway fuel efficiency (dependent variable); which combination has the greatest impact on performance on City and Highway. 
