## Deliverable 1
# Load dplyr package
library(dplyr)
# Read the file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
head(MechaCar)
# Perform linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
# Define the p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

## Deliverable 2
# Read the file
Suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
# Total summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
# Lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

## Deliverable 3
# T-test
t.test(Suspension$PSI, mu=1500)
# T-test for manufacturing lot 1
t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot=="Lot1"), mu=1500)

t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot=="Lot2"), mu=1500)

t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot=="Lot3"), mu=1500)