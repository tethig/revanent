#####Welcome to Part One#####
##Help Functions##
# Getting Help
?mean
??mean
?"%*%"

# Examples
example(mean)
example(sd)

##Simple Codes##
# Arithmetic Operators
2+4
2^3
850/10
220-20

##Reading Data##
# Inputting Data
x <- scan()
#now enter some numbers!
x
getwd()
dir()
setwd("C://PATH/TO/revanent-master")
dir()
easy <- read.table('simple.txt', header = TRUE, sep = "\t") 
head(easy)
View(easy)
plot(easy)
smoking <- read.csv('smoking.csv', header = T)
View(smoking)

# Data Frames
data(mtcars)
head(mtcars)
?mtcars

# The Environment
ls()

##Object Types##
# Vectors
c(1,3,5)
c("H", "A", "B")
c(TRUE, 2, "Sky")
y <- c(x, 0, x)
y

# Matrix
matrix(c(1,6,5,3,2,7), 3, 2)

# Array
x <- c(1,6,5,3,2,7,1,6,5,3,2,7)
array(x, dim = c(3,2,2)) 

# List
list(name="Mary", spouse="Todd", no.children=3, child.ages=c(4,7,9))

##Data Wranglings##
# Vector Refresher
c(3,4,5,6,7,8)
3:8
1:5*2
seq(2,10, by=2)
rep(3:8, times=2)
rep(3:8, each=2)

# Types of Object Refresher
M <- matrix(seq(1,31,by=2), 4, 4)
L <- list(a=1, b=1:3, c=10:100)

NumV <- 1:20
FacV <- factor(rep(letters[1:5],each=4))
letters

# Subsetting Objects
letters[c(2:4,26)]
M[2,3]
M[2,]
M[,3]
M[2,2:4]

# Base Aggregation Functions
apply(M, 1, min)
apply(M, 2, max)
lapply(L, FUN = length)
lapply(L, FUN = sum)
sapply(L, FUN = length)
sapply(L, FUN = sum)
tapply(NumV, FacV, sum)

library(help = "datasets") 
data(warpbreaks)
?warpbreaks
View(warpbreaks)
attach(warpbreaks)
by(warpbreaks[,1:2], tension, summary)
aggregate(breaks, list(wool, tension), summary)

# Detaching a Dataset (important!)
detach(warpbreaks)
warpbreaks[,3]
warpbreaks$tension

##R built-in Functions##
# Character Functions
test1 <- c("ATG","GTA","AGT", "TCG","ATG")
i <- grep("ATG", test1, fixed=TRUE)
i
test1[i] 
sub("ATG","AGT",test1)

##Basic Plots##
# Single Variable
y <- rnorm(100, mean = 0, sd = 1)
plot(y)
?plot
plot(y, type = 'b')
plot(y, type = 'l')
plot(y, type = 'h')

# Two Variables
head(mtcars)
plot(mtcars$hp, mtcars$mpg)
boxplot(mpg~am, data=mtcars)

# Saving Plot
pdf(file="myplot.pdf", 7, 7)
par(col='red')
boxplot(mpg~am, data=mtcars)
dev.off()

# Summary Stats
summary(smoking)
summary(mtcars)
sd(mtcars$mpg)
var(mtcars$mpg)

cor(mtcars$mpg, mtcars$wt)
cor.test(mtcars$mpg, mtcars$wt)
cor(mtcars)

aggregate(mtcars, by = list(row.names(mtcars)), FUN = "mean")

##Basic Stats##
# T test
x1 <- rnorm(100,0,1)
x2 <- rnorm(100,3,1)
t.test(x1, x2)

# Linear model
x <- c(1,3,5,7)
y <- c(2,8,13,19)
plot(x, y, xlab = "x", ylab = "y")

lm_model <- lm(y ~ x)
lm_model

abline(lm_model)
summary(lm_model)
anova(lm_model)

# Sample Size
power.t.test(n = 20, delta = 1)
power.t.test(power = .90, delta = 1)
power.t.test(power = .90, delta = 1, alternative = "one.sided")
