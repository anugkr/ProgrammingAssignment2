## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y) {
                x<<-y
        m<<-NULL
}
get<-function()x
setmean<-function(mean)m<<- mean
getmean<- function()m
list(set=set, get=get, 
     seatmean=seatmean,
     getmean=getmean)
}

## The following function calculates the mean of the special vector

cacheSolve <- function(x, ...) {
        m <-x$getmean()
        if(!is.null(m) {
                message ("getting cache data")
                return(m)
 }
           data <- x$get()
           m <- mean(data, ...)
           x$setmean(m)
           m
 }
        ## Below is the functions that cache the inverse of a matrix
           
 ##makecachematrix
 makecachematrix <- function(x = matrix()) {
         q <- NULL
         set<-function(y) {
                x<<-y
        q <<-NULL
}
 get<-function()x
setinverse<-function(inverse)q<<- inverse
getinverse<- function()q
list(set=set, get=get, 
     seatinverse=seatinverse,
     getinverse=getinverse)
}

      
##cacheSolve:The below function computes the inverse of matrix
     cacheSolve <- function(x, ...) {
        q <-x$getinverse()
        if(!is.null(q) {
                message ("getting cache data")
                return(q)
 }
           mat <- x$get()
           q <- inverse(mat, ...)
           x$setinverse(q)
           q
 }      
