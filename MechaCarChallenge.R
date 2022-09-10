#Deliverable 1: Linear Regression to Predict MPG
#************************************************

# loading package 

library(dplyr)

# Import and read .csv file as dataframe

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))



# Deliverable 2: Create Visualizations for the Trip Analysis
#***********************************************************


# Import and read .CSV file as dataframe

Suspension_Coil <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column

total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- Suspension_Coil %>%  group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


#box plot: PSI Whole lot
library(tidyverse)
plt1 <- ggplot(Suspension_Coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(Suspension_Coil,aes(x=Manufacturing_Lot,y=PSI,color=Manufacturing_Lot)) #import dataset into ggplot2
plt2 + geom_boxplot()


# Deliverable 3: T-Tests on Suspension Coils
#*******************************************

# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.


# t-test for all the lots, pop mu = 1500 psi
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))

# t-test for lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))



