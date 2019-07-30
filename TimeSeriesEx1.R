#library(timeSeries)
#library(timeDate)
install.packages('tseries')
library(tseries)
install.packages('forecast')
library(forecast)

################Example 2###########################
Example 1  data(AirPassengers)
data<-read.csv(file.choose(),header=TRUE)
AP= AirPassengers
class(AP) # check the form of class

View(AP)
str(AP) # structure of data
DLAP=diff(log(AP)) # stationary time series 
plot(DLAP)  # time series
abline(reg=lm(DLAP~time(DLAP)), col="blue") # line for the mean of time series

# make the time series stationary in mean

# make the stationary in mean and variance
LSAP=diff(log(AP))
plot(LSAP)
# autocorrelation (acf) plot 
# partial outocorrelation (pacf) plot

acf(LSAP, lag.max=20) # for nonstationary ts
pacf( LSAP, lag.max=20) # for nonstationary ts
## manual modelling using acf and pacf
#seasonal=list(order=c(0,1,1))
manual.fit<-arima(AP, c(1,1,2))  # fitted model
manual.fit
manual.fcast <- forecast(manual.fit, h=20) # prediction for 10 step ahead
plot(manual.fcast)
# automodelling using auto.arima
auto.fit<-auto.arima(AP, seasonal=T)
auto.fit
auto.fcast <- forecast(auto.fit, h=20)
plot(auto.fcast)

par(mfrow=c(2,2))
plot(manual.fcast)
plot(auto.fcast)
# Compute RMSE for auto.arima
# split the dataset to 100 as the trainset and 44 as the testset

training <- subset(AP, end=length(AP)-44)
length(training)
testing <- subset(AP, start=length(AP)-43)
test=as.numeric(test)
auto.fit<-auto.arima(training, seasonal=T)
auto.fcast <- forecast(auto.fit, h=44)
pred=as.numeric(auto.fcast$mean) 
length(pred)
df=data.frame(test,pred)

RMSE=sqrt(sum(test-pred)^2/length(pred))
auto.fcast <- auto.arima(training,seasonal=T)
auto.fcast %>%
  forecast(h=44) %>%
  autoplot() + autolayer(testing)

# compute RMSE for manual arima

fit<-arima(training, c(1,1,2))
fcast <- forecast(fit, h=44)
pred=as.numeric(fcast$mean) 
length(pred)
RMSE_m=sqrt(sum(test-pred)^2/length(pred))
rmse_auto=RMSE
rmse=c(rmse_auto, RMSE_m)
# plot training vs testing with predicted value based on manual arima
auto.fcast <- auto.arima(training,seasonal=T)
auto.fcast %>%
  forecast(h=44) %>%
  autoplot() + autolayer(testing)