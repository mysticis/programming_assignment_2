## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
matrixObject <- NULL
#function to set 
set <- function(y){
  x <<- y
  matrixObject <<- NULL
}
#get function
get <- function()x
setInverse <- function(inv){
  matrixObject <<- inv

}
getInverse <- function() matrixObject
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## Write a short comment describing this function

# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
  matrixInv <- x$getInverse()
  if(!is.null((matrixInv))){
    message("getting cached data")
    return(matrixInv)
  }
  data <- x$get()
  result <- solve(data, ...)
  x$setInverse(result)
  result
}
