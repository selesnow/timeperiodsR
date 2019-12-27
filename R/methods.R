# ###############################
# main
print.tpr <-
function(x, ...) {
  
  if ( length(x$sequence) == 1 ) {
    
  cat("\n", 
      "Time period:", format(as.Date(x$start), "%Y-%m-%d (%A)"))
  } else {
  
  cat("\n", 
      "Time period:", format(as.Date(x$start), "%Y-%m-%d (%A)"), 
      "-", format(as.Date(x$end), "%Y-%m-%d (%A)"))
  }

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

weekdays.tpr <- function(x, ...) {
  out <- x$weekdays
  
  return(out)
}

weekends.tpr <- function(x, ...) {
  out <- x$weekends
  
  return(out)
}

# ###############################
# set
"[[<-.tpr" <- function( x, i, value) {
  
  if ( ! "Date" %in% class(value) ) {
    value <- as.Date(value)
  }
  
  if ( i == "start" || i == 1 ) {
    
    x$start    <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    
  }
  
  if ( i == "end" || i == 2 ) {
    
    x$end    <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    
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
    
  }
  
  if ( i == "end" || i == 2 ) {
    
    x$end      <- value
    
    if ( x$start > x$end ) stop("The beginning of a period cannot be later than its end")
    
    x$sequence <- seq.Date(from = x$start, to = x$end, by = "day")              
    x$length   <- length( x$sequence )
    
  }
  
  return(x)
}

# ###############################
# methods
#
as_timeperiod <- function(x) {
  UseMethod("as_timeperiod")
}

as_timeperiod.default <- function(x) {
  
  x <- as.Date(x)
  
  out <- custom_period(min(x), max(x))
  return(out)
}

as_timeperiod.Date <- function(x) {
  
  out <- custom_period(min(x), max(x))
  return(out)
  
}

# ###############################
# 
weekends <- function(x) {
  UseMethod("weekends")
}

weekends.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(out)
}  

weekends.tpr <- function(x) {
  out <- x$weekends
  return(out)
}  

# ###############################
first_weekday <- function(x) {
  UseMethod("first_weekday")
}

first_weekday.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(min(out))
}  

first_weekday.tpr <- function(x) {
  out <- x$first_weekday
  return(min(out))
}

# ###############################
last_weekday <- function(x) {
  UseMethod("last_weekday")
}

last_weekday.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(max(out))
}  

last_weekday.tpr <- function(x) {
  out <- x$last_weekday
  return(min(out))
}

# ###############################
first_weekend <- function(x) {
  UseMethod("first_weekend")
}

first_weekend.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(min(out))
}  

first_weekend.tpr <- function(x) {
  out <- x$first_weekend
  return(min(out))
}

# ###############################
last_weekend <- function(x) {
  UseMethod("last_weekend")
}

last_weekend.default <- function(x) {
  x <- as.Date()
  out <- x[ ! format(x, "%w") %in% c("0", "6") ]
  return(max(out))
}  

last_weekend.tpr <- function(x) {
  out <- x$last_weekend
  return(min(out))
}