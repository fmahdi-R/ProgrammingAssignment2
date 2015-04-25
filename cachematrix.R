## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create a cached matrix

makeCacheMatrix <- function(m = matrix()) {
    inv <- NULL
    set <- function(y) {
        m <<- y
        inv <<- NULL
    }
    get <- function() m
    setinverse <- function(solve) inv <<- solve
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)   
    
}


## Write a short comment describing this function
## Calc the inverse of a squared matrix - no error checking

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    mi <- x$getinverse()
    if(!is.null(mi)) {
        message("getting cached data")
        return(mi)
    }
    data <- x$get()
    mi <- solve(data, ...)
    x$setinverse(mi)
    mi   
}






