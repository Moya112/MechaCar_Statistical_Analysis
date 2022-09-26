library (dplyr)

#DELIVERABLE 1
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
names (car_df)

# analysis quantitative  plotting mpg vs each variable
plot(car_df$mpg~car_df$vehicle_length)
plot(car_df$mpg~car_df$vehicle_weight)
plot(car_df$mpg~car_df$spoiler_angle)
plot(car_df$mpg~car_df$ground_clearance)
plot(car_df$mpg~car_df$AWD)

#calculate correlation coefficients  for all the variables
used_matrix <- as.matrix(car_df[,c("mpg", "vehicle_length","vehicle_weight", "spoiler_angle","ground_clearance", "AWD")]) #convert data frame into numeric matrix
cor(used_matrix)

modelo_mpg<-lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=car_df)
summary(modelo_mpg)
modelo_mpg$coefficients

#Deliverable 2
susp_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(susp_table)
# stats for PSI values for all the database
total_summary<-summarize(susp_table, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary
#stats for  PSI values by lot 
lot_summary <-summarize(group_by(susp_table, Manufacturing_Lot), Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

#DELIVERABLE 3 T-TEST ON SUSPENSION COILS 

t.test((susp_table$PSI),mu=1500)

#Lot1
t.test(subset(susp_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
#Lot2
t.test(subset(susp_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
#Lot3
t.test(subset(susp_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
