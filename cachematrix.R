## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

           m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
            
}
   get <- function()x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m 
    list(
        set = set, get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)
   }        
##The cacheSolve function calculates the inverse of the special "array" that was created with the makeCacheMatrix function.
## First it checks if the inverse has already been calculated and if so, it gets the inverse from the cache and skips the calculation.
## Otherwise, it calculates the inverse of the array and sets the value of the inverse in the cache via the setInverse function.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
