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
tmpFn <- function(matrix){
  x <- matrix[mat%%2==1]
  x*2
  matrix(x)
}
matrix(x)