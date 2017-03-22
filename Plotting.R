library(ISLR); library(ggplot2); library(caret);
data(Wage)
summary(wage)


featurePlot(x=training[,c("age","education","jobclass")],y=training$wage,plot="pairs")
gplot(age,wage,colour=jobclass,data=training);


qq <- qplot(age,wage,colour=eduction,data=training)
qq + geom_smooth(method='lm',formula=y~x)

cutWage <- cut2(training$wage,g=3)
table(cutWage)

p1 <- qplot(cutwage,age,data=training,fill=cutWage,geom=c("boxplot"))
p1

p2 <- qplot(cutwage,age,data=training,fill=cutWage,geom=c("boxplot","jitter"))
grid.arrange(p1,p2,ncol=2)

qplot(wage,colour = education,data=training,geom="density")


## Default S3 method:
hist(x, breaks = "Sturges",
     freq = NULL, probability = !freq,
     include.lowest = TRUE, right = TRUE,
     density = NULL, angle = 45, col = NULL, border = NULL,
     main = paste("Histogram of" , xname),
     xlim = range(breaks), ylim = NULL,
     xlab = xname, ylab,
     axes = TRUE, plot = TRUE, labels = FALSE,
     nclass = NULL, warn.unused = TRUE, ...)