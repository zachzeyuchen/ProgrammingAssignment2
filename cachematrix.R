## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "matrix", which is really a list containing a function to
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse
## 4.get the value of the inverse

## For this assignment, assume that the matrix supplied is always invertible.
makeCacheMatrix <- function(x = matrix()) {
    inv<- NULL
    #setMatrix is the function to set the value of the matrix
    setMatrix <- function(y){
        x<<-y
        inv<<-NULL
    }
    #getMatrix is the function to get the value of the matrix
    getMatrix <-function() x
    
    #setInverse is the function to set the value of the inverse of the matrix
    setInverse <- function(inverse) inv<<-inverse
    
    #getInverse is the function to retrieve the catched inverse if the matrix
    getInverse <- function() inv
    
    #Return a list if the the functions created above
    list(set = setMatrix, get = getMatrix, setInverse = setInverse, getInverse = getInverse)

}


## This function will first check the martix object to see if there is a cached results for the inverse.
## It will return the cached result if it is in there. Otherwise, it will calcaulate the inverse and 
## cache the result.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    ##Try to get the cached result of the inverse matrix and return the result
    inv<-x$getInverse()
    if(!is.null(inv)){
        message("getting cached inverse of the matrix")
        return(inv)
    }
    ##Since there is no cached result, we will calulate it and save it.
    data<-x$get()
    inv<-solve(data)
    x$setInverse(inv)
    inv
}
