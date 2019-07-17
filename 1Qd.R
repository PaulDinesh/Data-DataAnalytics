Wind=airquality$Wind
  
sort_Wind= Wind[order(Wind)]

fivedata_Wind=fivenum(sort_Wind)

IQR=fivedata_Wind[4]-fivedata_wind[2] 

QLw=fivedata_Wind[2]-1.5*IQR

QUw=fivedata_Wind[4]+1.5*IQR

Int=c(QLw,QUw)

boxplot(Wind)
boxplot.stats(Wind)

sort_Wind
fivedata_Wind
IQR
QLw
QUw
Int

