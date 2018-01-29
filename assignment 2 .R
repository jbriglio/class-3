#assignment 2 
#question 1 
#a
x <- c(1, 5, -2, 1, 2, -1, 3, 6, -3)
a <- matrix(x, 3, 3)
a
a%*%a%*%a
#b
b <- c(a[,3]+a[,2])
a[,3] <- b
a

#question 2 
x <- matrix(c(10, -10, 10), byrow=TRUE, 15, 3)
crossprod(x, x) 

#question 3
matE<- matrix(0, 6, 6)
row(matE)
col(matE)
matE[abs(row(matE)-col(matE))==1] <- 1
matE

#question 4
help(outer)
a <- 0:4
A <- outer(a, a, "+")
A

#question 5
#part a 
x <- outer(0:4, 0:4, "+")
matrix(x%%5, 5, 5)
#part b 
x <- outer(0:9, 0:9, "+")
matrix(x%%10, 10, 10)
#part c
x <- outer(0:8, 0:8 ,"-")
matrix(x%%9, 9, 9)

#question 6 
a <- 1:5
b <- c(2, 1:4)
d <- c(3, 2, 1:3)
e <- c(4:1, 2)
f <- 5:1
A <- matrix(c(a, b, d, e, f), 5, 5)
b <- matrix(c(7, -1, -3, 5, 17), 5, 1)
solve(A,b)

#question 7 
set.seed(75)
aMat <- matrix(sample(10, size=60, replace=T), nr=6)
aMat
#a
length(which(aMat[1,]>4))
length(which(aMat[2,]>4))
length(which(aMat[3,]>4))
length(which(aMat[4,]>4))
length(which(aMat[5,]>4))
length(which(aMat[6,]>4))
#b 
a <- length(which(aMat[1,]==7))
b <- length(which(aMat[2,]==7))
c <- length(which(aMat[3,]==7))
d <- length(which(aMat[4,]==7))
e <- length(which(aMat[5,]==7))
f <- length(which(aMat[6,]==7))
x <- c(a, b, c, d, e, f)
which(x==2)
#c
x <- colSums(aMat)
which(outer(x,x,"+")>75, arr.ind=T )
#with no repeats 
x <- colSums(aMat)
y <- outer(x,x,"+")>75
y [lower.tri(y ,diag=T)] <- F
which(y , arr.ind=T)

#question 8 
i <- 1:20
j <- 1:5
#a
sum(outer(i^4, (3+(j)), "/"))
#b
sum((i^4)/ (3 + outer(i,j,"*")))
#c
sum(outer(1:10,1:10,function(i,j){ (i>=j)*i^4/(3+i*j) }) )
