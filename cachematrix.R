## Put comments here that give an overall description of what your
## functions do
## Cache the inverse of a matrix

## Write a short comment describing this function
##1.        set the value of the matrix
##2.        get the value of the matrix
##3.        set the value of the inverse
##4.        get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}



## Write a short comment describing this function
##Calculates inverse of matrix created with the above function after first
##checking if its already been calculated.  If yes retreived from cache otherwise
##computed and cached

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
}
