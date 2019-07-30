data<-read.csv(file.choose(),header=TRUE)
x1=data$English
x2=data$Math
x3=data$Reading
x4=data$Writing
y=data$Sprint
dataset <- data.frame( x1, x2,x3,x4,y)

fit = lm(y ~ x1+x2 + x3 + x4, data= dataset) #Fitting the Model 
summary(fit) # show results
# accept beta1=0

#since at the level of alpha=0. 05 Enlgish score is not effective
#we can exclude that from the model and repeat modeling
#as follows:
fit = lm(y ~ x2 + x3 + x4, data= dataset) #Fitting the Model 
summary(fit) # show results

####predicted value
xnew=c(1,0,70,80,100) # including beta_0
predvalue=sum(coef(fit))
