#Programming Assignment 2
#Caching Inverse of a matrix


#The first part of the create a function to create matrix, 
#retrive the matrix, create inverse of matrix and get the inverse.

makeCacheMatrix <- function(x = matrix()){
  inv = NULL

    setmatrix <- function(y){
    x <<- y
    inv <<- NULL
  }
  getmatrix <- function()(x)
  
  setInverse <- function(inverse)(inv <<- inverse)
  getInverse <- function()(inv)
  
  list(setmatrix=setmatrix, getmatrix=getmatrix, setInverse=setInverse, getInverse=getInverse)
}


## This part of code solves the matrix if a matrix is given as input

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
        ##If the cached matrix is called again, it will appear along with message
    if(!is.null(inv)){
    message("acquiring cached data")
    return(inv)
  }
  m <- x$getmatrix()
  inv <- solve(m, ..)
  x$setInverse(inv)
  inv
}

##Example : Create a 4x4 matrix using
##          mat <- makeCacheMatrix(matrix(1:4, nrow=2, ncol=2))
##command the function to create and cache the inverse of matrix using
#           cachesolve(mat)
