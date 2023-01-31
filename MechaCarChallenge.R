############ Deliverable 1 ############

#Load Package
library(dplyr)

#import and read csv as a dataframe
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv",check.names=F, stringsAsFactors=F)
head(MechaCar_mpg)

#linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

#Summary Statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

############ Deliverable 2 ###########

#Import csv and read as a table
Suspension_Coil <- read.csv(file="Suspension_Coil.csv",check.names=F, stringsAsFactors=F)

#Stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Stat summary with group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')