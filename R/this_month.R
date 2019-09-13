this_month <-
function(x = Sys.Date(),
         part = c("all", "start", "end", "sequence", "length")) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "quarter" )
  stop  <- ceiling_date( x, unit = "quarter" ) - days(1)
  sequence <- seq.Date(from = start, to = stop, by = "day")
  
  out   <- list(start    = start,
                end      = stop,                
                sequence = sequence,
                length   =  length(sequence),
                values = paste("This month from", x))
  
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end", "sequence", "length") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}

