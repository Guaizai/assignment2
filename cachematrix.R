## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    get <- function() x
    set <- function(x) inverse_x <<- x
    get_inv <- function() inverse_x
    funcs <- list( get = get, set = set,get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv = x$get_inv()
    if(!is.null(inv)){
        print("cached inverse matrix")
        return(inv)
    }else{
        inverse_x = solve(x$get(),...)
        x$set(inverse_x)
        inverse_x
    }
}
