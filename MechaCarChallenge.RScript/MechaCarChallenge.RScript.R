#load dplyr package.
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG----------------------

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechcar_df<- read.csv(file = "../MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechcar_df)

#Perform summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechcar_df))

# Deliverable 2 : Visualizations for the Trip Analysis

#Import and read in the Suspension_Coil.csv file as a table.
suspension_df <- read.csv(file = "../Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

#creates a total_summary dataframe using the summarize() function to get 
#the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_df %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep') 

#creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by 
#the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                         Median=median(PSI),
                                                                         Variance=var(PSI),
                                                                         SD=sd(PSI), .groups = 'keep')      

#Deliverable 3 : T-Tests on Suspension Coils

#t.test() function to determine if the PSI across all manufacturing lots is
#statistically different from the population mean of 1,500 pounds per square inch.

#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suspension_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_df, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)






