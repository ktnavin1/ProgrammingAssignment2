## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	# Initializes inverse matrix variable
         inv_matrix <- NULL

	 # set values for i/p matrix
         set <- function(y) {
                 i_matrix <<- y
                 inv_matrix  <<- NULL
         }
	
	 # Function to retrive i/p matrix

         get <- function() i_matrix

	 # Set the inverse matrix value

         setinverse <- function(inv) inv_matrix <<- inv
	
	 # Function to retrive inverse matrix

         getinverse <- function() inv_matrix 

         list(set = set, get = get,
              setinv = setinverse ,
              getinv = getinverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # checks for cached data, if exist fetch and display
         inv_matrix <- i_matrix$getinv()
         if(!is.null(inv_matrix)) {
                 message("Getting cached data")
                 return(inv_matrix)
         }

	 # If there is no cached data, calculate inverse and store in cache
         data <- i_matrix$get()
         inv_matrix  <- solve(data )
         i_matrix$setinv(inv_matrix)
         inv_matrix  
}
