
makeCacheMatrix <- function(x = matrix()){
  inv = NULL
  setmatrix <- function(y){
    x <<- y
    inv <<- NULL
  }
  getmatrix <- function()(x)
  setInverse <- function(inverse)(inv <<- inverse)
  getInverse <- function(inv)
  list(setmatrix=setmatrix, getmatrix=getmatrix, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
