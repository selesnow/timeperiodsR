last_n_weeks <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           week_start = 1,
           include_current = F){
    
  if ( ! inherits(x, "Date") ) {
    x <- as.Date(x)
  }
    
    start <- floor_date( x, unit = "week", week_start ) - weeks(n) 
    stop  <- start + days(7 * n) - days(1) + weeks(ifelse( isTRUE(include_current), 1, 0))
    
    out   <- custom_period(start, stop)
  
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  }  
}
