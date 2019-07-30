library(forecast)
link='http://www.stat.ufl.edu/~winner/data/wage_cpi.csv'
data=read.csv(link)
head(data)
str(data)
x=data$wage
class(x)
tsvar <- ts(x,frequency=1)#to convert to timeseries data
class(tsvar)
#(a)Validate assumption -1)Stationarity 2)Normality
plot(tsvar)
#non-stationary in mean
#to make ts stationary in mean use diff alone
tsvar=diff(log(tsvar)) # to make ts stationary in mean and variance use diff & log
plot(tsvar) 

qqnorm(tsvar) # if the graph is straight slope line the time series data is normal
#(b)	Fit the optimized model for ‘wage’ and provide the coefficient estimates for the fitted model. 

#run Seasonal =F & T check AIC which is less and use that
auto.fit<-auto.arima(tsvar,seasonal=T) #automatic way to find 
auto.fit

auto.fit<-auto.arima(tsvar,seasonal=F) #automatic way to find 
auto.fit

auto.fcast<-forecast(auto.fit,h=10)
plot(auto.fcast)
