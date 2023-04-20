last_n_days <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F){
    
    if ( ! inherits(x, "Date") ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "days" ) - days(n)
    stop  <- start + days(n) - days(1) + days(ifelse(include_current, 1, 0))
    
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
