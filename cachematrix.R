## Put comments here that give an overall description of what your
## functions do
## Writing a pair of functions that cache the inverse of a matrix will save time associated with matrix inversion
## Write a short comment describing this function that an cache its inverse
## This function will create a special matrix object that can 
makeCacheMatrix <- function(x = matrix()) { 
  inv <- NULL
  set <- function(y) { 
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- fucntion(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv - getinv)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by mackCachMatrix above.If the inverse has already been calculated, then the cachesolve should tretireve the inverse from the cache. 
cacheSolve <- function(x, ...) {
       inv <- x$getinv()
         if(!is.null(inv)) { 
           message("getting cached data")
           return(inv)
         }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
 mt<- matrix(rnorm(36), 6, 6)
 mcmt<- makeCacheMatrix(mt)
 cacheSolve(mcmt)
 
 
   

