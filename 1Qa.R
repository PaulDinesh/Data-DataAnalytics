#Quick inspection of raw data
head(airquality) #To view the first 6 rows of the dataset
tail(airquality) #To view the last 6 rows of the dataset
View(airquality) #To view the dataset
#Type of data & its dimensions
class(airquality) #To prints the vector of names of classes 
nrow(airquality) #To find the number of rows in the dataset
ncol(airquality) #To find the number of columns in the dataset
length(airquality[,1]) #To find the number of rows
length(airquality)#To find the number of columns
names(airquality) #To view names of columns 
str(airquality) #To view the summary of the dataset
help("airquality")#To view the Description, Usage, Format, Details, Source, Reference, Examples in R Documentation
