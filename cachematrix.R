##
#  Here is my second programming assignment version. I'd try to keep
#  code as simply as I can and comply necessary requirements. It needs
#  to inverse a matrix and return result or cached result
##

## makeCacheMatrix implements methods to operate with matrixes
#  using example:
#
#  mt <- matrix(c(100,1,1,100),nrow=2,ncol=2)   # init a matrix
#
# expecting results:
# > mt
# [,1] [,2]
# [1,]  100    1
# [2,]    1  100
#
##
#
#  mm <- makeCacheMatrix(mt)                    # create like obgect with methods
#
# no output expecting
#
##
#
#  mm$get()                                     # use method "get" to view martix 
#
# expecting results:
# [,1] [,2]
# [1,]  100    1
# [2,]    1  100
#
##

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## makeCacheMatrix implements operations with "cache"
#  using example:
#
#  cacheSolve(mm)               # first use
#
# expecting results:
#            [,1]        [,2]
# [1,]  0.01000100 -0.00010001
# [2,] -0.00010001  0.01000100
#
##
#
#  cacheSolve(mm)               # second use
#
# expecting results:
# getting cached matrix         # cached message appears
# [,1]        [,2]
# [1,]  0.01000100 -0.00010001
# [2,] -0.00010001  0.01000100
#
##

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data)
  x$setsolve(s)
  s
}
