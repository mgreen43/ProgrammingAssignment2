##Variable "x" will represent the matrix
##Value "inv" is set to "NULL"

makeCacheMatrix <- function(x = matrix()) {
              inv <- NULL
            set <- function(y) {
              x <<- y
              inv <<- NULL
            }
            
##The former arguments "setmean" and "getmean" were changed 
##to "setInverse" and "getInverse"
            
get <- function() x
            setInverse <- function(inverse) inv <<- inverse
            getInverse <- function() inv
             list(set = set, get = get,
            setInverse = setInverse,
             getInverse = getInverse)
}
##Arguments were altered here as well.
##We now have "solve" instead of "mean" and "s" is a reflection of the change. 

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
}