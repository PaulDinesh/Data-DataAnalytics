
my.data<-airquality

head(my.data)
tail(my.data)

is.na(my.data)
any(is.na(my.data))
sum(is.na(my.data)) 
str(my.data)


# sum(is.na(my.data$Ozone))
# sum(is.na(my.data$Solar.R))
# sum(is.na(my.data$Wind))
# sum(is.na(my.data$Temp))
# sum(is.na(my.data$Month))
# sum(is.na(my.data$Day))
colSums(is.na(my.data)) 
# my.data.clean<-na.omit(my.data)
# nrow(my.data.clean)
my.data.clean2<-my.data[complete.cases(my.data),] #To remove all rows containing NA
nrow(my.data.clean2)

my.data.clean3<-na.omit(my.data[1]) #To remove rows containing NA in first column 
nrow(my.data.clean3)

my.data.clean4<-na.omit(my.data[2]) #To remove rows containing  NA in second column
nrow(my.data.clean4)

