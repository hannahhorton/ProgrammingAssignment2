## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a function that can cache the inverse of  matrix x

makeCacheMatrix <- function(x = matrix()) {
    inverse = NULL
    set = function(y){
      x <<- y
      inverse <<- NULL
    }
    get = function() x
    setInverse <- function(solveMatrix) inv <<- solveMatrix
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }


## cacheSolve determines whether the inverse of matrix x has already been calculated; if so, it will retreive it from the cache, otherwise it will calculate and cache it

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse    
        ## Return a matrix that is the inverse of 'x'
}
