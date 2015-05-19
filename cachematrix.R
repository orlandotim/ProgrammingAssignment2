## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the makeCacheMatrix function will generate a matrix object and then cache the inverser
## the cacheSolve function will return the inverse of the cached matrix returned by makeCacheMatrix
## 
## Comments for the functions are embedded in the function itself

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
# set the matrix
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
	# get the matrix
    get <- function() x
	#set the inverse of the matrix
    setinv <- function(solve) i <<- solve
	# get the inverse of the matrix
    getinv <- function() i
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## need to add comments 
cacheSolve <- function(z, ...) {
        ## This will return a matrix that is the inverse of 'z'
		i<- z$getinv()
		# check to see if the inverse matrix has been determined 
    if(!is.null(i)) {
      message("obtaining data")
      return(i)
    }
	# calculate the inverse
    data <- z$get()
    i<- solve(data, ...)
	# set the value of the inverse 
    z$setinv(i)
    i
}
