############################################################
#
#
#  This Function cacheSolve works as below
#
#  1. Check the existance of inverse of the Matrix
#  2. If the Inverse of the Matrix exists, it returned from 
#     the cache
#  3. If not exists, it computes the Inverse of the Matrix
#     by calling the function setInverse in the makeCacheMatrix
#     function
#
#
############################################################

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}