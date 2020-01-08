next_n_months <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F){
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "month" ) + months(ifelse( isTRUE(include_current), 0, 1))
    stop  <- ceiling_date( x, unit = "month" ) + months(n) - days(1)
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
