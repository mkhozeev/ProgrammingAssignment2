### Introduction

Here is my second programming assignment version. I'd try to keep
code as simply as I can and comply necessary requirements.

### Code Rewiev

The first function, `makeCacheMatrix` creates a special "matrix", 
with functions, similar to methods in object oriented programming
languages

* set the matrix
* get the matrix
* set the inverse matrix
* get the inversed matrix

<!-- -->

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

Next function returns cached values in case of calculated values exists 
and recalculate in other case.

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

### ToDo list

In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.

    Done [https://github.com/mkhozeev/ProgrammingAssignment2](https://github.com/mkhozeev/ProgrammingAssignment2)
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
    
    Done
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
    
    Done
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
    
    Done
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.
    
    Done