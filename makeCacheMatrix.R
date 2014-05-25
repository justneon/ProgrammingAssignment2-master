## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	## check if the Matrix is valid to solve
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	
	get <- function() x
        setcache <- function(solve) m <<- solve
        getcache <- function() m
        list(set = set, get = get,
             setcache = setcache,
             getcache = getcache)
}


