Wind=my.data.clean$Wind
   
sort_Wind= Wind[order(Wind)] #To sort the column wind 

fivedata_Wind=fivenum(sort_Wind) #fivenum returns a vector of length five (minimum, lower-hinge, median, upper-hinge, maximum)

IQR=fivedata_Wind[4]-fivedata_Wind[2] #InterQuartile Range
 
QLw=fivedata_Wind[2]-1.5*IQR #Lower Quartile Range
 
QUw=fivedata_Wind[4]+1.5*IQR #Upper Quartile Range

Int=c(QLw,QUw)
vect=c()
length(Wind) #number of rows in column Wind
#The values outside Inter & Outer Quartile range are outliers
for(i in Wind)
{if((i>QUw)&(i>QLw))
{vect=c(vect,i)}
  }

length(vect) #Number of outliers in column Wind
View(vect) #To view the outliers
#Alternatively we can find the outliers using the status of boxplot
boxplot(Wind)
boxplot.stats(Wind)
