airquality
head(airquality)
View(airquality)
temp<-airquality$Temp
temp_mean= mean(temp)
temp_median=median(temp)
temp_occurence<-table(as.vector(temp))
temp_occurence
names(temp_occurence)[temp_occurence==max(temp_occurence)] #mode
temp_mean
temp_median
temp_sd=sd(temp)
temp_var=var(temp)
temp_sd_sqrt_var=sqrt(temp_var) #sqrt of var = sd
temp_range=range(temp)
temp_range
temp_sd
temp_var
temp_sd_sqrt_var
quantile(temp)
summary(temp)


