## Below ia a pair of function that cache the invere of a given matrix

## This function contains four small functions working seperately that:  
## 1.set the input matrix 2.get the input matrix 3.set the inverse of the input matrix 4.get the inverse 
## of the input matrix. The four small functions stored in a list.

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Calculate the inverse the matrix returned by makeCacheMatrix. It first checks if the inverse is alreadly saved. If yes, it
## then returns the saved.

cacheSolve <- function(x, ...) {
  
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
      }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
