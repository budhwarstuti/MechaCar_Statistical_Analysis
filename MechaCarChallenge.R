library(dplyr) # adding dpylr

# DELIVERABLE_1
mecha_cars_df <- read.csv("MechaCar_mpg.csv", sep=",", header= TRUE) # adding csv file
head(mecha_cars_df) # testing the imported data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df) # applying linear regression for multiple points
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df)) # arriving at summary
