## Put comments here that give an overall description of what your
## functions do
## the first function is to define a input matrix x and to store its inverse m, once this sub function set is called, the cached value m will be reset.
## the second function is to check whether the inverse of a matrix is in its parent envioronment, if there is, then return the cached value, if not, then calculate the inverse. 

## Write a short comment describing this function
## generate a list of four functions: set,get, setinv, and getinv
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
## Return m (value in cache) or calculate the inverse of matrix x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m
}
