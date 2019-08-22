datafilename="http://www.stat.ufl.edu/~winner/data/iran_rock.csv"
dataset1=read.table(datafilename,header=F)   #read the data into a table
dataset1 = read.csv("iran_rock.csv", header = TRUE)
head(dataset1)
View(dataset1)
aov.set1 = aov(rock.dens~location,data=dataset1)  #do the analysis of variance

summary(aov.set1)                                    #show the summary table
print(model.tables(aov.set1,"means"),digits=3)       #report the means and the number of subjects/cell
boxplot(rock.dens~location,data=dataset1)        #graphical summary
