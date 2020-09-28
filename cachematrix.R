#Programming Assignment 2
#Caching Inverse of a matrix


#The first part of the create a function to create matrix, 
#retrive the matrix, create inverse of matrix and get the inverse.

makeCacheMatrix <- 
  function(x = matrix()){ ##define function with a default matrix
    inv = NULL                   ##create an empty placeholder of matrix inverse
    
    setmatrix <- function(y){    ##define a new function for matrix in parent environment
    x <<- y
    inv <<- NULL                
    }
  getmatrix <- function()(x)     ##get the value of matrix
  
  setInverse <- function(inverse)(inv <<- inverse)   #function to define inverse matrix in parent environment
  getInverse <- function()(inv)  ##get the value of inverse of matrix
  
#create a list of function to retrive later using $ operator
    list(setmatrix=setmatrix, getmatrix=getmatrix, setInverse=setInverse, getInverse=getInverse)
}

# This part of code returns the matrix created by the first function by 
# retreiving it from cache given that inverse has already been calculated
# and the matrix has not changed.

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
