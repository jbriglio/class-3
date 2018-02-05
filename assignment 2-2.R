#assignment 3
#question 1 
#a 
tmpFn1 <- function(xVec){
  return(xVec^(1:length(xVec)))
}
a <- c(1:5)
b <- tmpFn1(a)
b
tmpFn2 <- function(xVec2){
  return(xVec2^(1:length(xVec2))/(1:length(xVec2)))
}
a <- c(1:5)
b <- tmpFn2(a)
b
#b
tmpFn3 <- function(x){
  return(1+sum((x^(1:length(x))/(1:length(x)))))
}
a <- c(1:5)
b <- tmpFn3(a)
b

#question 2 
tmpFn <- function(xVec){
  n <- length(xVec)
  return((xVec[1:(n-2)]+xVec[2:(n-1)]+xVec[3:n])/3)
}
a <- c(1:5, 6:1)
b <- tmpFn(a)
b

#question 3 
tmpFn <- function(x){
  ifelse(x<0, x^2+2*x+3, ifelse(x<2, x+3, x^2+4*x-7))
}
y <- c(-3:3)
plot(tmpFn(y))

#question 4 
tmpFn <- function(mat){
  mat[mat%%2==1] <- 2*mat[mat%%2==1] 
  mat
}
tmpFn(matrix(c(1, 5, -2, 1, 2, -1, 3, 6, 3), 3, 3))

#question 5 
x <- (diag(2, 5, 5))
y <- abs(row(x)-col(x))
x[y==1] <- 1
x
x <- function(n,k){
  x <- (diag(n, k, k))
  y <- abs(row(x)-col(x))
  x[y==1] <- 1
  x
}

#question 6 
quad <- function(alpha)
{
  1 + (alpha%%360)%/%90
}
quad(100)
quad(180)
quad(307)
quad(449)

#question 7 
#a 
weekday <- function(day, month, year){
  month <- month-2
  if(month<=0){
    month <- month+12
    year <- year-1
  }
  c <- year%/%100
  year <- year%%100
  x <- round((2.6*month-0.2), digits=0) + day + year + year%/%4 + c%/%4 - 2*c
  y <- x%%7 + 1 
  y
}
weekday(31, 1, 2018)
#b
weekday(c(1:4), c(1:4), c(2001:2004))

#question 8 
#a
testLoop <- function(n){
  xVec <- rep(0, n-1)
  xVec[1] <- 1
  xVec[2] <- 2
  for(j in 3:(n-1))
    xVec[j] <-xVec[j-1] + 2/xVec[j-1] 
  xVec
}
testLoop(6)
#b 
testLoop2 <- function(yVec){
  n <- length(yVec)
  sum(exp(1:n))
}
testLoop2(1:5)

#question 9 
#a 
quadmap <- function(start, rho, niter){
  x <- rep(0, niter)
  x[1] <- start
  for(i in 1:(niter-1)){
    x[i+1] <- rho * x[i] * (1-x[i])
  }
  x
}
quadmap(10,6,7)
tmp <- quadmap(start=0.95, rho=2.99, niter=500)
plot(tmp, type="l")
plot(tmp[300:500], type="l")
#b 
quadmap2 <- function(start, rho, c=.02){
  x <- start
  y <- rho*x*(1 - x)
  n <- 1
  while(abs(x - y) >= c) {
    x <- y
    y <- rho*x*(1 - x)
    n <- n + 1
  }
  n
}
quadmap2(.95, 2.99)

#question 10 
#a
tmpFn <- function(xVec){
  x <- xVec - mean(xVec)
  n <- length(xVec)
  num <- sum(x[2:n] * x[1:n])
  denom <- sum(x^2)
  y <- num/denom
  z <- list(y, y)
  z
}
tmpFn(c(2:56, by=3))
#b
tmpFn <- function(xVec, k){
  x <- xVec - mean(xVec)
  n <- length(xVec)
  num <- sum(x[2:n] * x[1:n])
  denom <- sum(x^2)
  tmpFn2 <- function(j){ sum(num[(j+1):n] * num[1:(n-j)])/denom }
  c(1, sapply(1:k, tmpFn2))
}
