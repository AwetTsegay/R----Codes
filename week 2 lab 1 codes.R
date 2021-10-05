### CS5100 Lab Worksheet 1: Introduction to R
##################################################
# 1. Starting R
#Type 'demo()' for some demos, 
demo()
#'help()' for on-line help, or
help()
#'help.start()' for an HTML browser interface to help.
help.start()
# Type 'q()' to quit R.

demo()
help()
help.start()
q()

####################################################
#2. Basic Commands

x <- c(1,6,2)
x

x <- c(1,
       + 6,
       + 2)
x

?c

y <- c(1,4,3)
length (x)
length (y)
x+y

ls()
rm(x,y)
ls()

rm(list=ls())

? matrix
x <- matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x
x <- matrix(c(1,2,3,4),2,2)
x
matrix (c(1,2,3,4),2,2,byrow = TRUE)
y <- matrix(c(0,3,2,1),2,2)
y

# it will return the inner product (as a matrix).
x %*% y
help("%*%")
# The operator * will give the element-wise product.
x*y 
# Example -----------------
x <- 1:4
x
(z <- x %*% x)    # scalar ("inner") product (1 x 1 matrix)
drop(z)             # as scalar

y <- diag(x)
y
z <- matrix(1:12, ncol = 3, nrow = 4)
z
y %*% z
y %*% x
x %*% z
# ----------------------

sqrt(x)
x^2

x <- rnorm(50)
x
y <- x + rnorm(50, mean=50, sd =.1)
y
cor(x,y)

set.seed(1303)
rnorm(50)

set.seed(3)
y <- rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)
####################################################
# 3. Graphics
?plot
x <- rnorm (100)
y <- rnorm (100)
plot(x,y)
plot(x, y, xlab = "this is the x-axis",
     ylab = "this is the y-axis",
     main = "Plot of X vs Y")

pdf("Figure.pdf")
plot(x, y, col="green")
dev.off()

x <- seq(1,10)
x
x <- 1:10
x

x <- seq(-pi, pi, length=50)
plot(x,sin(x))

##################################################################
# 4. Indexing Data
A <- matrix (1:16,4,4)
A
A[2,3]
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,]

A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]
dim(A)
##############################################################
# 5. Loading Data
getwd()
setwd()

Auto <- read.table("Auto.data")
fix(Auto)

Auto <- read.table("Auto.data", header=T, na.strings="?")
fix(Auto)
dim(Auto)

Auto <- na.omit(Auto)
dim(Auto)
names(Auto)

##########################################################
# 6. Additional Graphical and Numerical Summaries

plot(cylinders,mpg)
plot(Auto$cylinders,Auto$mpg)

attach(Auto)
plot(cylinders,mpg)

cylinders <- as.factor(cylinders)
cylinders

plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T)
plot(cylinders, mpg, col="red", varwidth=T, horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders",
     ylab="MPG")

hist(mpg)
hist(mpg, col=2)
hist(mpg, col=2, breaks=15)

pairs(Auto)
pairs (~ mpg + displacement + horsepower + weight +
         acceleration, Auto)

plot(horsepower,mpg)
identify(horsepower,mpg,name)

summary(Auto)
summary(mpg)
q()
savehistory() 
loadhistory() 
######################################
# 7. Exercises
Auto <- read.table("Auto.data", header=T, na.strings="?")
Auto <- na.omit(Auto)
dim(Auto)
names(Auto)
fix(Auto)
# Q1
# quantitative variables: mpg", "cylinders", "displacement", "horsepower"
# weight", "acceleration", "year", "origin"
# qualitative variable: name

# Q2
range(mpg) # 9.0 46.6
range(cylinders) # 3 8
range(displacement) # 68 455
range(horsepower) # 46 230
range(weight) # 613 5140
range(acceleration) # 8.0 24.8
range(year) # 70 82
range(origin) # 1 3

# Q3
summary(Auto)

mean(mpg) # 23.44592
sd(mpg) # 7.805007

mean(cylinders) # 5.471939
sd(cylinders) # 1.705783

mean(displacement) # 194.412
sd(displacement) # 104.644

mean(horsepower) # 104.4694
sd(horsepower) # 38.49116

mean(weight) # 2977.584
sd(weight) # 849.4026

mean(acceleration) # 15.54133
sd(acceleration) # 2.758864

mean(year) # 75.97959
sd(year) # 3.683737

mean(origin) # 1.576531
sd(origin) # 0.8055182

# Q4
data_remove <- Auto[-c(10:84),]
fix(data_remove)

range(data_remove$mpg) # 11.0 46.6
range(data_remove$cylinders) # 
range(data_remove$displacement) # 
range(data_remove$horsepower) # 
range(data_remove$weight) # 
range(data_remove$acceleration) # 
range(data_remove$year) # 
range(data_remove$origin) # 

mean(data_remove$mpg) # 
sd(data_remove$mpg) # 

mean(data_remove$cylinders) # 
sd(data_remove$cylinders) # 

mean(data_remove$displacement) # 
sd(data_remove$displacement) # 

mean(data_remove$horsepower) # 
sd(data_remove$horsepower) # 

mean(data_remove$weight) # 
sd(data_remove$weight) # 

mean(data_remove$acceleration) # 
sd(data_remove$acceleration) # 

mean(data_remove$year) # 
sd(data_remove$year) # 

mean(data_remove$origin) # 
sd(data_remove$origin) # 

# Q5

attach(Auto)
plot(cylinders,mpg)

plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders",
     ylab="MPG", main = " The plot")
hist(mpg,horsepower)


pairs(Auto)
pairs (~ mpg + displacement + horsepower + weight +
               acceleration, Auto)
# Q6

