data<-read.csv(file.choose(),header=TRUE)
x1=data$Height
y=data$Weight
# data cleaning: removing missing values, removing outliers,...
dataset <- na.omit(data.frame( x1,y)) # remove missing values
boxplot(dataset[,2])  # boxplot to see the outliers

fit = lm(y ~ x1, data= dataset,family="gaussian") #Fitting the Model
fit
newdata=c(1,0)  # since the Height is not significant, it is excluded in the predictive model###
newdata
predictedvalue=sum(coef(fit)*newdata) # predicted value based on optimized predicitve model
predictedvalue
summary(fit) 
attributes(fit)
