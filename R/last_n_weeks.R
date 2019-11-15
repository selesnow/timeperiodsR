last_n_weeks <-
function(x = Sys.Date(),
           n = 1, 
           part = c("all", "start", "end", "sequence", "length"),
           week_start = 1,
           include_current = F){
    
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
    
    start <- floor_date( x, unit = "week", week_start ) - weeks(n) 
    stop  <- start + days(7 * n) - days(1) + weeks(ifelse( isTRUE(include_current), 1, 0))
    
    out   <- custom_period(start, stop)
  
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end", "sequence", "length") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
