last_n_months <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "month" ) - months(n)
    stop  <- start + months(n + ifelse( include_current, 1, 0)) - days(1)
    
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
