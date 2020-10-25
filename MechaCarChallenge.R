library(dplyr) # adding dpylr

# DELIVERABLE_1
mecha_cars_df <- read.csv("MechaCar_mpg.csv", sep=",", header= TRUE) # adding csv file
head(mecha_cars_df) # testing the imported data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df) # applying linear regression for multiple points
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df)) # arriving at summary

#DELIVERABLE_2
susp_coil_df <- read.csv("Suspension_coil.csv",sep = ",", header = TRUE) #adding csv file
total_summary <- susp_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') # arriving at summary  
lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Lot Summary DF


