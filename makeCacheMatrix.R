# function: makeCacheMatrix
# This function creates a special "matrix" object that can cache its inverse.
# 
# Input:
# - m: matrix
# - default: 1x1 NA matrix
# 
# Output: object of special matrix class (matrix with methods)
# If matrix not square, return NULL
makeCacheMatrix <- function(m = matrix()) {
  
  # Initialize flag
  # flag:
  # - if NULL -> indicates no inverse has been calculated yet
  # - if not NULL -> indicates inverse has been calculated
  flag <- NULL
    
  # Method to set the special matrix
  set <- function(y) {
    m <<- y
    # Set new matrix => flag is set to NULL again
    flag <<- NULL 
  }
  
  # Method to get the value of input matrix
  get <- function() { m }
 
  # Method to set the inverse of the input matrix
  setInverse <- function(inv) { flag <<- inv }
  
  # Method to get the inverse of the input matrix
  getInverse <- function() { flag }
  
  # Return methods
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}

