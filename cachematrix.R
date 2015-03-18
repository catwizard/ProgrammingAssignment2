## Writes a pair of functions that cache the inverse of a matrix. 
## If the inverse has already been calculated (and the matrix has not changed),
## then the cacheSolve should retrieve the inverse from the cache.

## Computing the inverse of a square matrix can be done with the solve function. 
## For example, if X is a square invertible matrix, 
## then solve(X) returns its inverse.
## For this assignment, assume that the matrix supplied is always invertible.

## creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
         m <<- solve(y)
    }
    get <- function() m
    list(set=set, get=get)
}


## computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(cache, x=NULL, ...) {
    m <- cache$get()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    m <- cache$set(x)
    return(m)
        ## Return a matrix that is the inverse of 'x'
}
