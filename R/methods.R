print.tpr <-
function(x, ...) {
  cat("\n", 
      "Time period:", x$values, "\n",
      "Date start:", format(as.Date(x$start), "%e %B of %Y, %A"), "\n",
      "Date end:   ", format(as.Date(x$end), "%e %B of %Y, %A"))
}

seq.tpr <- function(x, ...) {
  
  if ( missing(...) ) {
    by = "day"
  }
  
  out <- seq.Date(from = x$start,
                  to = x$end, 
                  by = by)
  return(out)
}

length.tpr <- function(x) {
  out <- length(x$sequence)

  return(out)
}

start.tpr <- function(x, ...) {
  out <- x$start
  
  return(out)
}

end.tpr <- function(x, ...) {
  out <- x$end
  
  return(out)
}

"[[<-.tpr" <- function( x, i, value) {
  
  if ( ! "Date" %in% class(value) ) {
    value <- as.Date(value)
  }
  
  if ( i == "start" || i == 1 ) {
    
    x$start    <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    x$values   <- paste("Custom period from", x$start, "to", x$end)
    
  }
  
  if ( i == "end" || i == 2 ) {
    
    x$end    <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    x$values   <- paste("Custom period from", x$start, "to", x$end)
    
  }

  return(x)
}

"[<-.tpr" <- function( x, i, value) {
  
  if ( ! "Date" %in% class(value) ) {
    value <- as.Date(value)
  }
  
  if ( i == "start" || i == 1 ) {
    
    x$start    <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    x$values   <- paste("Custom period from", x$start, "to", x$end)
    
  }
  
  if ( i == "end" || i == 2 ) {
    
    x$end      <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    x$values   <- paste("Custom period from", x$start, "to", x$end)
    
  }
  
  return(x)
}
