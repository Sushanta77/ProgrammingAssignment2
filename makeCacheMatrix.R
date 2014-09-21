############################################################
#
#
#  This Function makeCacheMatrix has 4 outlined function
#
#  1. Function "set", set the value of the invers matrix to NULL
#     and assign the other matrix to a different environment variable
#  2. Function "get", get the value of the inverse of the Matrix
#  3. Function "setinverse", inverse (Compute) the passed Matrix
#  4. Function "getinverse", get the inverse (Computed) the passed 
#     Matrix
#     
#
############################################################

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(mean) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}