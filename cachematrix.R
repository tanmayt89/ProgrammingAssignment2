##pair of functions that cache the inverse of a matrix.

## following  function creates a "matrix" object that  caches inverse.

makeCacheMatrix <- function(x = matrix()) { j <- NULL
set <- function(y){
  x <<- y
  j <<- NULL
}
get <- function()x
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)

}


## computes the inverse of the returned value from previous function

cacheSolve <- function(x, ...) {j <- x$getInverse()
if(!is.null(j)){
  message("getting cached data")
  return(j)
}
mat <- x$get()
j <- solve(mat,...)
x$setInverse(j)
j
        
}
