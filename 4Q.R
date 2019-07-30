#QTR is the output
library(MASS)
dataset <- read.csv("http://users.stat.ufl.edu/~winner/data/nfl2008_fga.csv")

#(A)
dataset.lda<-lda(qtr~togo+ydline+kicker,data=dataset)
#sum of LD1+LD1 is >90 so select both
#(B)
head(dataset)
data=cbind(dataset$togo,dataset$ydline,dataset$kicker)
data1=na.omit(data)
fit<-princomp(data1)
summary(fit) #print variance acconted for,
loadings(fit) #pc loadings
plot(fit,type="lines") #scree plot
