next_n_days <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F){
    
    if ( ! inherits(x, "Date") ) {
      x <- as.Date(x)
    }
    
    start <- x + days(ifelse( isTRUE(include_current), 0, 1))
    stop  <- x + days(n) 
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
