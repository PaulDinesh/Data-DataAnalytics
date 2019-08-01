dataset <- read.csv("http://users.stat.ufl.edu/~winner/data/nfl2008_fga.csv")
library(caTools) # useful to split data to training and test datasets

set.seed(1456)
n=nrow(dataset)
n
indexes = sample(n,n*(80/100))
trainset=dataset[indexes,]
testset =dataset[-indexes,]
#(a)  
table(trainset$homekick) # to identify the output
#the appropriate glm is logistic regression

#(b)
fit=glm(homekick~togo+ydline+kicker,data=trainset,family='binomial')
summary(fit)
#if p-value <alpha it is significant
#since p-value for togo is less than alpha =0.05
# therefore, only togo is significant
#(C)
pred=predict(fit,testset)
predictedvalues=rep(0,length(pred))
predictedvalues[pred>0.5]=1
actual=testset$homekick
df=data.frame(actual,predictedvalues)
View(df)
#screenshot of view data ->head values

#(D)
confusion_matrix=table( predictedvalues, actual)
accuracy=mean(predictedvalues == actual) # correctness of prediction
View(confusion_matrix)