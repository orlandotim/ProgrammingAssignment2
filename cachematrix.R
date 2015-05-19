## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the makeCacheMatrix function will generate a matrix object and then cache the inverser
## the cacheSolve function will return the inverse of the cached matrix returned by makeCacheMatrix
## 
## need to add comments
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinv <- function(solve) i <<- solve
    getinv <- function() i
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## need to add comments 
cacheSolve <- function(z, ...) {
        ## This will return a matrix that is the inverse of 'z'
		i<- z$getinv()
    if(!is.null(i)) {
      message("obtaining data")
      return(i)
    }
    data <- z$get()
    i<- solve(data, ...)
    z$setinv(i)
    i
}
