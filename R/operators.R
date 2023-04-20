"%.in%" <- function(x, y) {
  
  if ( ! inherits(y, "tpr") ) {
    stop("right value must be object of tpr class")
  }
  
  if ( inherits(x, "tpr") ) {
    x <- x$sequence
  } else {
    # convert to date
    x <- as.Date(x)
  }
   
    return(x %in% y)
}

"%left_out%" <- function(x, y) {
  
  if ( inherits(x, "tpr") ) {
    x <- x$sequence
  }
  
  if ( inherits(y, "tpr") ) {
    y <- y$sequence
  }
  
  out_dates <- x[ ! x %in% y ]
  
  return(out_dates)
}

"%left_in%" <- function(x, y) {
  
  if ( inherits(x, "tpr") ) {
    x <- x$sequence
  }
  
  if ( inherits(y, "tpr") ) {
    y <- y$sequence
  }
  
  out_dates <- x[ x %in% y ]
  return(out_dates)
}

"%right_out%" <- function(x, y) {
  
  if ( inherits(x, "tpr") ) {
    x <- x$sequence
  }
  
  if ( inherits(y, "tpr") ) {
    y <- y$sequence
  }
  
  out_dates <- y[ ! y %in% x ]
  return(out_dates)
}

"%right_in%" <- function(x, y) {
  
  if ( inherits(x, "tpr") ) {
    x <- x$sequence
  }
  
  if ( inherits(y, "tpr") ) {
    y <- y$sequence
  }
  
  out_dates <- y[ y %in% x ]
  
  return(out_dates)
}