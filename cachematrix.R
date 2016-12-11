## I will be creating 2 functions that define a matrix in the first and calculate its inverse in the second function


## This function takes a matric as an input and creates a special matrix which is a list of four functions get,set,getinv and setinv which will be used in the second function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This function calculates the inverse of the matrix. It will first check to see if the inverse is already calculated. if yes then it will display that the cached results are being displayed. if not already cached it will calculate the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
