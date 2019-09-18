this_week <-
  function(x = Sys.Date(), 
           part = c("all", "start", "end", "sequence", "length"),
           week_start = 1) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
  start <- floor_date( x, unit = "week", week_start)
  stop  <- start + days(6) 
  sequence <- seq.Date(from = start, to = stop, by = "day")
  
  out   <- list(start  = start,
                end    = stop,
                sequence = sequence,
                length   =  length(sequence),
                values = paste("This week from", x))
  
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end", "sequence", "length") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
