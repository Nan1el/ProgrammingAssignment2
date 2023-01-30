## Put comments here that give an overall description of what your
## functions do


makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse property
        i <- NULL
        
        ## To set the matrix
        set <- function(matrix) {
                m <<- matrix
                i <<- NULL
        }
        ## To get the matrix
        get <- function() {
                ## Return the matrix
                m
        }
        
        ## method to set the inverse of the matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
        
        ## Method to get the inverse of the matrix
        getInverse <- function() {
                ## Return the inverse property
                i
        }
        ## Return a list of the methods
        list(set = set, get = get,
             setInverse = setInverse, 
             getInvserse = getInverse)
        
}


cacheSolve <- function(x, ...) {
        
        m <- x$getInverse()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ## Get the matrix from our object
        
        data <- x$get()
        
        ## Calculate the inverse using matrix multiplication
        m <- solve(data) %*% data
        
        ## Set the inverse to the object
        x$setInverse(m)
        
        ## Return the matrix
        
        m
        
        
        
}
