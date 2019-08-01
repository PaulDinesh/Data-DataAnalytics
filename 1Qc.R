airquality
head(airquality)
View(airquality)
temp<-my.data.clean$Temp #To extract temp column from the cleansed dataset
temp_mean= mean(temp) #To find mean of temp
temp_median=median(temp) #To find median of temp
temp_occurence<-table(as.vector(temp)) #To find occurence of temp

names(temp_occurence)[temp_occurence==max(temp_occurence)] #To find mode of temp

temp_sd=sd(temp) #To find standard deviation of Temp
temp_var=var(temp) #To find variance of temp
temp_sd_sqrt_var=sqrt(temp_var) #sqrt of var = sd
temp_range=range(temp) #To find Range of temp

quantile(temp) #To find quantile of temp
summary(temp) #To find Mininum & Maximum value, 1st, 2nd, 3rd quantile , mean of temp


