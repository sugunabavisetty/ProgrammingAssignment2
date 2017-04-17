## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Write getter and setter methods for inverse (setInverse and getInverse)
#Store methods in a list

makeCacheMatrix <- function(x = matrix()) {
  invrse <- NULL
  #Getter and Setter Methods
  set <- function(i) {
    x <<- i
    invrse <<- NULL
  }
  setInverse <- function(inverse) invrse <<- inverse
  get <- function() x
  getInverse <- function() invrse
  #list
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function
#The below function computes the inverse of a matrix
#inverse of a matrix can be found with solve function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if (!is.null(i)){
        message("Checking cached data...")
        return (i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
