## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## returns: augmented matrix comaptible with cacheSolve() to cache inverse
	## x: matrix to converted to above-mentioned augmented matrix
	matInv <- NULL 
	setInv <- function(inv) matInv <<- inv 
	getMat <- function() mat 
	getInv <- function() matInv 
	list(setInv = setInv, 
		 getMat = getMat, 
		 getInv = getInv) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	## mat: augmented matrix created via makeCacheMatrix()
	## return cache if possible
	##otherwise calculate & caches resulting inverse
	if(is.null(mat$getInv()))
		mat$setInv(solve(mat$getMat()))
	mat$getInv()
}
