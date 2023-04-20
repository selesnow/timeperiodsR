last_n_quarters <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F) {
    
    if ( ! inherits(x, "Date") ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "quarter" ) - months(3 * n) 
    stop  <- start + months(3 * n) - days(1) + dmonths(ifelse( isTRUE(include_current), 3, 0))
    
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
