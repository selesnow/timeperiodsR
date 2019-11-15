next_week <-
function(x = Sys.Date(),
         n = 1, 
         part = c("all", "start", "end", "sequence", "length"),
         week_start = 1) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "week", week_start ) + weeks(n) 
  stop  <- start + days(6)
  out   <- custom_period(start, stop)
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end", "sequence", "length") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  }
}
