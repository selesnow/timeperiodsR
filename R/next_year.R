next_year <-
function(x = Sys.Date(),
         n = 1, 
         part = c("all", "start", "end", "sequence", "length")){
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "year" ) + years(n)
  stop  <- start + years(1) - days(1)
  out   <- custom_period(start, stop)
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end", "sequence", "length") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  }
}
