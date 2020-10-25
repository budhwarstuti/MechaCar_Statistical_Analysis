# MechaCar_Statistical_Analysis

## **Linear Regression to Predict MPG**
**![Summary_Mechcar](./Summary_Mechcar.png)**

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

* Is the slope of the linear model considered to be zero? Why or why not?
The slope is not considered to be zero because of the very samll p-value at 5.35e-11. We've got enough evidence to reject the null hypotheis.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model predicts the mpg of MechaCar prototypes effectively. The multiple R-squared value of 0.7149 and the adjusted R-Squared value of 0.68 indicate  that there is a strong corelation between all factors provided with mpg.

## **Summary Statistics on Suspension Coils**
**![Total_summary](./Total_summary.png)**

**![Lot_summary](./Lot_summary.png)**

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
As per the total summary for all three lots, the manufacturing data meets the requirement of the variance below 100 psi. But when we look at the individual lot sumarries, we find that lot 1 and 2 meet the variance requirements whereas lot 3 is way above the 100 psi limit.

