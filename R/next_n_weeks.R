next_n_weeks <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           week_start = 1,
           include_current = F) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "week", week_start ) + weeks(ifelse( isTRUE(include_current), 0, 1)) 
    stop  <- ceiling_date( x, unit = "week", week_start ) + days(7 * n) 
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
