last_n_years <-
function(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"),
           include_current = F){
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "year" ) - years(n)
    stop  <- start + years(n) - days(1) + years(ifelse(include_current, 1, 0))
    out   <- custom_period(start, stop)
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
  }
