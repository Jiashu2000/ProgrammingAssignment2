## The function is created for Matrix inversion.Caching the inverse of a matrix can save much computation power.
## This pair of functions is to cache the inverse of matrix and then compute it.


## makeCacheMatrix function is to cache the inverse of matrixs

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve function is to demonstrate "inversing" by computing the inverse matrix returned by the first function.

cacheSolve <- function(x, ...) {
        a <- x$getinverse()
        if(!is.null(a)){
                message("getting cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data,...)
        x$setinverse(a)
        a
}
