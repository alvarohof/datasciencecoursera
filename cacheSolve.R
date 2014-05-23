# function: cacheSolve
# This function computes the inverse of the special "matrix"
# returned by 'makeCacheMatrix' function. If the inverse has
# already been calculated (and the matrix has not changed),
# then the 'cachesolve' should retrieve the inverse from the cache.
# 
# Input:
# - m: object of special matrix created with function 'makeCacheMatrix'
# 
# Ouput: inverse of special matrix
cacheSolve <- function(m) {
  
  inv <- m$getInverse()

  # If inverse already calculated, return cached inverse matrix
  if(!is.null(inv)) {
    # Message indicating now is returning the cached inverse
    # as it has been calculated previously
    message("getting cached data")
    return(inv)
  }
  
  # If inverse not calculated
  data <- m$get()

  # Calculate the inverse and set it
  inv <- solve(data)
  m$setInverse(inv)
  
  # Return the inverse
  inv
  
}
