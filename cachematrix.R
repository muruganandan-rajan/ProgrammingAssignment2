## Put comments here that give an overall description of what your
## functions do

##Caching the inverse of Matrix function would be benefical rather
##than repeating this costly computation everytime

## Write a short comment describing this function
##set and get the value of the matrix
##set and get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## below function cacheSolve return the reverse of the matrix. the reverse
## value is returned by this function from cache if it exisits else it
## computes the reverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  
  if(!is.null(inv)) {
    message("getting inverse from cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
  
}




