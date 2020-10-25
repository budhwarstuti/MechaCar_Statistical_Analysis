library(dplyr) # adding dpylr

# DELIVERABLE_1
mecha_cars_df <- read.csv("MechaCar_mpg.csv", sep=",", header= TRUE) # adding csv file
head(mecha_cars_df) # testing the imported data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df) # applying linear regression for multiple points
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_cars_df)) # arriving at summary

# DELIVERABLE_2
susp_coil_df <- read.csv("Suspension_coil.csv",sep = ",", header = TRUE) #adding csv file
total_summary <- susp_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') # arriving at summary  
lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #arrving at Lot Summary 

# DELIVERABLE_3
# t-test for overall lots vs population mean of 1500 psi
t.test(susp_coil_df$PSI, mu = 1500)

#t-test for lot1 vs population mean of 1500 psi
lot1_df <- susp_coil_df %>% subset(Manufacturing_Lot == "Lot1")
t.test(lot1_df$PSI, mu = 1500) 

#t-test for lot2 vs population mean of 1500 psi
lot2_df <- susp_coil_df %>% subset(Manufacturing_Lot == "Lot2")
t.test(lot2_df$PSI, mu = 1500) 

#t-test for lot3 vs population mean of 1500 psi
lot3_df <- susp_coil_df %>% subset(Manufacturing_Lot == "Lot3")
t.test(lot3_df$PSI, mu = 1500) 