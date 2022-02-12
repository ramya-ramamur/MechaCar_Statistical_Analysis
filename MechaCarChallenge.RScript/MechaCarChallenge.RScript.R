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