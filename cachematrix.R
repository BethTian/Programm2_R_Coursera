## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function(x = matrix()) {
  ## define the inverse matrix of x is in_x
  in_x <- NULL
  ## create a function to assign value on x
  set <- function(y){
    x <<- y
    in_x <<- NULL
  }
  ##return the value of x   
  get <- function() x
  ##calculate the inverse matrix of x
  ##we default that the x is invertable
  setinverse <- function(inverse_matrix) cx <<- solve(x)
  
  ##return the value of cx
  getinverse <- function() cx
  
  list(set = set, get= get, 
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cx <- x$getinverse()
  if(!is.null(cx)) {
    message("getting cached data")
    return(cx)
  }
  data <- x$get()
  cx <- solve(x)
  x$setinverse(cx)
  cx
}
