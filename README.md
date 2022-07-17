# MechaCar_Statistical_Analysis

## Project Overview

THe purpose of this project is to help the manufacturing team of AutosRU sovle their production troubles that are blocking the manufacturing team's progress of MechaCar.  

In this project the team will do the following: 

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

*	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

*	Run t-tests to determine if the manufacturing lots are statistically different from the mean population

*	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG

![Screen Shot 2022-07-12 at 12 34 57 PM (2)](https://user-images.githubusercontent.com/102264298/179417149-0562d1ac-aab0-457f-b12e-d502209a4a8e.png)

![Screen Shot 2022-07-12 at 12 35 08 PM (2)](https://user-images.githubusercontent.com/102264298/179417152-c8ddf46f-f6cc-49ab-8314-f6b659e5fc5c.png)

From the outputs above, we can see that: 

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  Vehicle Length (p = 2.60e-12) and Ground Clearance (p = 5.21e-08) provided a non-random amount of variance to the mpg values in the dataset, since their p-value is less than 0.05.  

* Is the slope of the linear model considered to be zero? Why or why not?

  The slope of the linear model is not zero, because the p-value is 5.35e-11 and it is less than 0.05. This indicates that there is suffcient evidence to reject the null hypothesis.  

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  Because the R-squared is 0.7149, which means this linear model explains 71% mpg of MechaCar prototypes. We can say that this linear model is effective. 

## Summary Statistics on Suspension Coils

![totalsummary](https://user-images.githubusercontent.com/102264298/179417182-205fbb64-ac2f-4977-906e-10959c9268c2.png)

![Deli2](https://user-images.githubusercontent.com/102264298/179417188-5348082d-0456-4891-beb6-b9c09a59038e.png)

* Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  From the outputs above, it is shows that the variance of the suspension coils is 62.29, which is not exceed 100 pounds per square inch. The current manufacturing data meet this design specification for manufacturing lot1 and lot2, but not in lot3. 

## T-Tests on Suspension Coils

### T-test for all Lots

![T_test](https://user-images.githubusercontent.com/102264298/179417219-cdb6ae96-b8a2-4e7e-aab9-497c2ca94051.png)

The p-value for all manufacturing lots is 0.06028, which is larger than 0.05. Aa a result, there is not sufficient evidence to reject the null hyppothesis.  

### T-test for Lot1, Lot2 and Lot3

![Lot1](https://user-images.githubusercontent.com/102264298/179417226-473c0e6d-d12a-406c-98a1-25133fa0ec92.png)

![Lot2](https://user-images.githubusercontent.com/102264298/179417227-f35a9bab-b21d-488d-b82f-39427be6b9c0.png)

![Lot3](https://user-images.githubusercontent.com/102264298/179417229-4bbf4457-8e0c-4210-8552-51a55bbbf437.png)

From the t-tests above, it shows that the mean of three manufacturing lots does not have significant difference from the population mean of 1,500 pounds per square inch, it is statistically similar.  

P-value for Lot1 and Lot2 are much larger than 0.05, so it is not statistically significant from the normal distribution.  

P-value for Lot3 is less than 0.05, so it is statistically significant from the normal distribution.  

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In this description, address the following questions:

* What metric or metrics are you going to test?
 
  Cost and city or highway fuel efficiency between the MechaCar and their competitors. 
  
* What is the null hypothesis or alternative hypothesis?

  Null hypothesis: There is no statistical difference between the competition's dataset and the MechaCar's mpg dataset.
  
  Alternative hypothesis: There is statistical difference between the competition's dataset and the MechaCar's mpg dataset.

* What statistical test would you use to test the hypothesis? And why?

  I would recommend using two-sample t-test to test the hypothesis. So it will show that wether there is a statistical difference between the distribution means from two samples?

* What data is needed to run the statistical test?
  
  It is necessary to have the cost, city or highway fuel efficiency data. And the dataset should be a random sample and sample size is large than 30.
 

