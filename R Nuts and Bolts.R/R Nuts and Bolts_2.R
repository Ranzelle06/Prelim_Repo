x <- c(1,2,NA, 10,3)
is.na(x)
is.nan(x)

x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)
##Data Frame
x<-data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)
##Names
x<- 1:3
names(x)

names(x)<- c("foo","bar","norf")
x
names(x)

x<-list(a=1, b=2, c=3)
x

m<-matrix(1:4, nrow=2, ncol=2)
dimnames(m)<- list(c("a","b"), c("c","d"))
m

## dputing

y<- data.frame(a=1,b="a")
dput(y)

new.y <-dget("y.R")
new.y

x<-"foo"
y<-data.frame(a=1, b= "a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

##Subsetting

x<- c("a","b","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<- x > "a"
u
x[u]

## Subsetting List

x<- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x<- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]

x<- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]]
x$name
x$foo

## Subsetting Nested List

x <- list(a = list(10, 12, 14), b = c(3.14,2.18))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

## Subsetting Matrix

x<- matrix(1:6, 2, 3)
x[1, 2]
x[2, 1]

x[1,]
x[ ,2]

x<- matrix(1:6, 2, 3)
x[1,2]
x[1, 2, drop = F]

x<- matrix(1:6, 2, 3)
x[1, ]
x[1, , drop = F]

## Partial Matching

x <- list(angelo = 1:5)
x$a
x[["a" , exact = F]]

## Removing NA Values
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x<- c(1, 2, NA, 4, NA, 5)
y <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(x,y)
good
x[good]
y[good]

## Vectorized Operation
x <- 1:4; y<- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y

## Vectorized Matrix Operations

x<- matrix(1:4, 2, 2); y<- matrix(rep(10, 4),2, 2)
x*y
x/y
x%*%y



