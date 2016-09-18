##FUNCTION NUMBER 1
## 1) Set the value of the matrix
## 2) Get the value of the matrix
## 3) Set the value of the Inverse
## 4) Get the value of the Inverse

makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL
        set <- function(y) {
                x <<- y
                cache <<- NULL
        }
#this returns the stored matrix
        get <- function() x
        setInvmatrix <- function(solve){
              cache <<- solve  
        } 
#this gets the cache value
        getInvmatrix <- function() {
              cache
        }
#Creates a list with all the functions
        list(set = set, get = get,
             setInvmatrix = setInvmatrix,
             getInvmatrix = getInvmatrix)
}


##FUNCTION NUMBER 2
## The following function returns the cache matrix function created by MakeCacheMatrix().

cacheSolve <- function(x, ...) {
#Looks for cache value
        cache <- x$getInvmatrix()
#If it exists it returns it.
        if(!is.null(m)) {
                message("getting cached data")
                return(cache)
        }
#if it doesn't exist it calculate it.
        data <- x$get()
        cache <- solve(x, ...)
#prints the inverse of the matrix
        x$setInvmatrix(cache)
        cache
}
