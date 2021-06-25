## Put comments here that give an overall description of what your
## functions do

## The first function, makeCacheMatrix creates a special "array", which is actually a list that contains a function to: 5 
## 1. set the value of the array 6 
## 2. get the value of the array 7 ## 3. set the value of the inverse of the matrix 8 
## 4. get the value of the inverse of the matrix

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
    m <- x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
               }
   mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}

  }
