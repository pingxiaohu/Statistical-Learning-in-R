# Create a list of numbers. 
x<-c(1,3,2)
y<-c(1,4,3)
z=x+y

# Open help window of the function. 
?length

# Find length of a set of numbers. 
length(z)

# List all of the objects.
ls()

# Remove any objects. 
rm(x,y)
rm(list=ls())

# Create a matrix of numbers. 
x=matrix(data=c(1,2,3,4),nrow=2,ncol=2)
x=matrix(c(1,2,3,4),2,2)
y=matrix(c(1,2,3,4),2,2,byrow=TRUE)
dim(x)

# Basic calculations.
sqrt(x)
x^2

# Generate a vector of random normal variables. 
x=rnorm(50)
y=x+rnorm(50,mean=50,sd=.1)
cor(x,y)

# Use set.seed() to reproduce the same random variables. 
set.seed(1303)
rnorm(50)

# Basic statistics. 
set.seed(3)
y=rnorm(100)
mean(y)
var(y)
sd(y)

# Graphics. 
?plot
x=rnorm(100)
y=rnorm(100)
plot(x,y)
plot(x,y,xlab="this is x-axis",ylab="this is y-axis",
     main="Scatter Plot of X vs Y")

# Save plots to files. 
pdf("Figure 1.pdf") # jpeg() png()
plot(x,y,col="green")
dev.off() # indicates that we are done creating plot

# Create a sequence of numbers. 
x=seq(1,10)
y=1:10
z=seq(-pi,pi,length=10)

# Plot of 3D data. 
?contour
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)
?image
image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa,theta=30)
persp(x,y,fa,theta=30,phi=20)
persp(x,y,fa,theta=30,phi=70)
persp(x,y,fa,theta=30,phi=40)

# Indexing data
A=matrix(1:16,4,4)
A[2,3]
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,] # treat as a vector
A[-c(1,3),]

# Loading data
?read.table
?write.table
# Auto=read.table("Auto.data",header=T,na.strings="?")
# Auto=read.csv("Auto.csv",header=T,na.strings="?")
library(ISLR)
?Auto
# fix(Auto)
dim(Auto)
Auto[1:4,]
Auto=na.omit(Auto)
names(Auto)

# Summarize data
plot(Auto$cylinders,Auto$mpg)
attach(Auto) # Tell R to make the variables in this data frame available by name
plot(cylinders, mpg)
cylinders=as.factor(cylinders)
plot(cylinders,mpg,col="red",varwidth=T,
     xlab="cylinders",ylab="MPG")
hist(mpg,col=2,breaks=15)
pairs(Auto)
pairs(~mpg+displacement+horsepower+weight+acceleration,Auto)

plot(horsepower,mpg)
identify(horsepower,mpg,name)

summary(Auto)
summary(mpg)

# Exit and save commands
savehistory()
loadhistory()