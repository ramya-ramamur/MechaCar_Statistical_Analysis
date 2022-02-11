#load dplyr package.
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG----------------------

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechcar_df<- read.csv(file = "../MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechcar_df)

#Perform summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechcar_df))