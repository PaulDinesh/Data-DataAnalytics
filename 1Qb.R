my.data<-airquality

head(my.data) #To view the first 6 rows of the dataset
tail(my.data) #To view the last 6 rows of the dataset

is.na(my.data) #To check the dataset has null values
any(is.na(my.data)) #To check the dataset has null values
sum(is.na(my.data)) #To find total of  null values in a dataset
str(my.data) #To view the structure of the dataset
colSums(is.na(my.data))  #To view the which column has null values and its total per column
nrow(my.data) #No. of rows before cleansing
my.data.clean<-na.omit(my.data)  #To remove all rows containing NA
any(is.na(my.data.clean)) #To check the dataset has any null values after cleansing
nrow(my.data.clean) #To check the number of rows not affected after cleansing


# sum(is.na(my.data$Ozone))
# sum(is.na(my.data$Solar.R))
# sum(is.na(my.data$Wind))
# sum(is.na(my.data$Temp))
# sum(is.na(my.data$Month))

# sum(is.na(my.data$Day))

# my.data.clean<-na.omit(my.data)
# nrow(my.data.clean)
my.data.clean2<-my.data[complete.cases(my.data),] #To remove all rows containing NA
nrow(my.data.clean2)
View(my.data.clean2)
any(is.na(my.data.clean2))
my.data.clean3<-na.omit(my.data[1]) #To remove rows containing NA in first column 
any(is.na(my.data.clean2))
nrow(my.data.clean3)

my.data.clean4<-na.omit(my.data[2]) #To remove rows containing  NA in second column
nrow(my.data.clean4)

