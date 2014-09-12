## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "matrix", which is really a list containing a function to
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse
## 4.get the value of the inverse

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
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
