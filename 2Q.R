dataset <- read.csv("http://users.stat.ufl.edu/~winner/data/nfl2008_fga.csv")
library(caTools) # useful to split data to training and test datasets

split=sample.split(dataset[,15],SplitRatio=.8)
trainset=subset(dataset, split==T)  # training dataset
testset=subset(dataset,split==F)   # test dataset

dim(testset)
dim(trainset)
#homekick is the output other fields are input
trainset.glm <- glm( homekick ~togo+kicker+ydline, family="binomial") # ~. shows that we include all ind. variables
summary(trainset.glm) # both variable are sig.

res=predict(trainset.glm,testset, type="response")  # prediction

dim(testset[,1])
dim(trainset[,1])
predictedvalues=rep(0,211) #replicate zero equivalent to test data row
predictedvalues[res>0.5]=1   # probability of Gender being 1, if p<0.5 then gender=0
table( predictedvalues, actualvalues=testset[,1])
mean(predictedvalues == testset[,1]) # correctness of prediction
