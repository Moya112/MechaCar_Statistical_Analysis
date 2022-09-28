# MechaCar_Statistical_Analysis

# Project Overview
AutosRUs’ newest prototype, the MechaCar, is having production troubles blocking the manufacturing team’s progress. As a result, AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team. 

The data analytics team will be doing the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

# Resources 
- Data Source: MechaCar MPG dataset and Suspension Coil dataset.
- Data Tools: tidyverse, dplyr, ggplot2, and MechaCarChallenge.RScript.
- Software: RStudio


# Deliverable 1
## Linear Regression to Predict MPG

- For deliverable one, we will use multiple linear regression to predict which metrics affect a car's performance measured in miles per gallon (mpg). Then, using the R function to plot each of the metrics vs. mpg to see if there were a correlation. From these plots, I could observe that only "vehicle_length" and "ground_clearance" seem to affect the mpg variable. 


<img width="898" alt="Deli 1 Summary" src="https://user-images.githubusercontent.com/105765150/192659076-0f10bf7b-6c66-41bf-827e-4a9a4ac6bc98.png">


# Deliverable 2
## Summary Statistics on Suspension Coils

- For deliverable two, the data was taken from Suspension_Coils.csv and calculated using R functions summarize() and groupby(). As a result, the PSI statistic for all the databases listed below:
<img width="657" alt="Screen Shot 2022-09-27 at 8 22 03 PM" src="https://user-images.githubusercontent.com/105765150/192660182-8269efc0-7ecd-4ead-bcec-e74261ab0411.png">

- The PSI stats by lot using summarize() and groupby() listed below:

<img width="624" alt="Screen Shot 2022-09-27 at 8 23 47 PM" src="https://user-images.githubusercontent.com/105765150/192660321-f6961ad8-ea36-41fa-b697-370ba11d3761.png">

- MechaCar design specifications for the Suspension Coils indicate that the variance of the Suspension Coils must not exceed one hundred pounds per square inch.  Lot 1 and Lot 2 meet the design specifications, except for Lot 3 because their variance was 170, which is above the variance of 100 psi established by the design specification.

# Deliverable 3
## T-Test on Suspension Coils

- T-Test on Suspension Coils
<img width="817" alt="T-Test" src="https://user-images.githubusercontent.com/105765150/192660897-a826c978-e0fc-4e93-ba8b-68ec42ea4238.png">

# Lot 1
- Lot 1 has the actual sample mean of 1500, as we saw in the summary statistics above. Therefore, with a p-value of 1, we cannot reject (i.e., accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).

<img width="823" alt="Lot 1" src="https://user-images.githubusercontent.com/105765150/192661813-6e7987d6-0322-4895-9348-650e84ff8fd7.png">

# Lot 2
Lot 2 has the same outcome with a sample mean of 1500.02 and a p-Value of 0.61; therefore, we cannot reject the null hypothesis, and the sample means and the population mean of 1500 are statistically similar.

<img width="680" alt="Lot 2" src="https://user-images.githubusercontent.com/105765150/192661882-b155d5ad-4bca-4e99-97e7-72a2652d4109.png">

# Lot 3
The sample mean is 1496.14, and the p-Value is 0.04, which is lower than the standard significance level of 0.05. All indicate to reject the null hypothesis that this sample mean and the presumed population means are not statistically different.

<img width="748" alt="Lot3" src="https://user-images.githubusercontent.com/105765150/192661913-e90c0b45-fc8e-4989-a3cc-a3463fbf9c43.png">

# Deliverable 4
## Study Design: MechaCar vs Competition

Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
 - MPG (Gasoline Efficiency)
 - Resale Value
 - Safety Features
 - Current Selling Price 

## Hypothesis: Null and Alternative
- Null Hypothesis (Ho): The current MechaCar sellig price is based on the saftey performance against other manufactors.
- Alternative Hypothesis (Ha): TThe current MechaCar sellig price is NOT based on the saftey performance against other manufactors.

To determine the factors with the highest correlation/predictability with the listing selling price (dependent variable). A random sample of n > 50 for MechaCar and their competitor would need to be collected, and calculating the data through RStudio.
