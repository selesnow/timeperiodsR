next_n_quarters <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F) {
    
    if ( ! inherits(x, "Date") ) {
      x <- as.Date(x)
    }

    start <- floor_date( x, unit = "quarter" ) + months(ifelse( isTRUE(include_current), 0, 3)) 
    stop  <- ceiling_date( x, unit = "quarter" ) + months(n * 3) - days(1)
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
