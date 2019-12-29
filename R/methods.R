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
    by <- "day"
    what <- c("sequence", 
              "workdays",
              "weekends",
              "official_day_offs",
              "official_workdays")
  }
  
  what <- match.arg(what, c("sequence", 
                            "workdays",
                            "weekends",
                            "official_day_offs",
                            "official_workdays"))
  
  if ( what == "sequence" ) {
    
    out <- seq.Date(from = x$start,
                    to = x$end, 
                    by = by)
  
  } else {
    
    out <- x[[what]]
    
  }
  
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
workdays <- function(x) {
  UseMethod("workdays")
}

workdays.default <- function(x, ...) {
  x <- as.Date()
  out <- x[ ! format(x, "%w") %in% c("0", "6") ]
  return(out)
}

workdays.tpr <- function(x, ...) {
  out <- x$workdays
  
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
first_workday <- function(x) {
  UseMethod("first_workday")
}

first_workday.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(min(out))
}  

first_workday.tpr <- function(x) {
  out <- x$first_workday
  return(min(out))
}

# ###############################
last_workday <- function(x) {
  UseMethod("last_workday")
}

last_workday.default <- function(x) {
  x <- as.Date()
  out <- x[ format(x, "%w") %in% c("0", "6") ]
  return(max(out))
}  

last_workday.tpr <- function(x) {
  out <- x$last_workday
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

# ###############################
workdays_length <- function(x) {
  UseMethod("workdays_length")
}

workdays_length.default <- function(x) {
  x <- as_timeperiod()
  x <- workdays(x)
  
  return(x$workdays_length)
}  

workdays_length.tpr <- function(x) {
  out <- x$workdays_length
  return(out)
}


# ###############################
weekends_length <- function(x) {
  UseMethod("weekends_length")
}

weekends_length.default <- function(x) {
  x <- as_timeperiod()
  x <- weekends(x)
  
  return(x$weekend_length)
}  

weekends_length.tpr <- function(x) {
  out <- x$weekend_length
  return(out)
}