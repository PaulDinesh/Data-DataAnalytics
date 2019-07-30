dataset <- read.csv(file.choose(),header=TRUE)
library(caTools) # useful to split data to training and test datasets
split=sample.split(dataset[,2],SplitRatio=.8)
trainset=subset(dataset, split==T)  # training dataset
testset=subset(dataset,split==F)   # test dataset

dim(testset)
dim(trainset)
head(dataset)
trainset.glm <- glm( admit ~gre+gpa+rank ,trainset, family="binomial") # ~. shows that we include all ind. variables
summary(trainset.glm) # both variable are sig.

res=predict(trainset.glm,testset, type="response")  # prediction
View(res)
dim(testset[,1])
dim(trainset[,1])
predictedvalues=rep(0,80) #replicate zero 80 times
predictedvalues[res>0.5]=1   # probability of Gender being 1, if p<0.5 then gender=0
table( predictedvalues, actualvalues=testset[,1])
mean(predictedvalues == testset[,1]) # correctness of prediction
