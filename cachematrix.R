## Put comments here that give an overall description of what your
## functions do

## Set value of matrix
## Get value of matrix
## Set value of inverse
## Get value of invers

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Calculate inverse or get cached data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}


