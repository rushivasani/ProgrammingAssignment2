## Put comments here that give an overall description of what your
## functions do

## This Function initiates an object i that will store the inverse.  
## It also defines the get and set objects to get get the values of the matrix
## IT defines setinverse and getinvserse objects that initiaties the cache and stores the inverse once available

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function
## This function checks if the the inverse of a matrix passed into the makeCacheMatrix is already stored in the cache or not. 
## IF yes then the inverse is picked from the cache and if not then its calculated and set in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached inverse matrix")
    return(i)
  }
  data <- x$get()
  i <- solve(data,... = )
  x$setinverse(i)
  i
}

