this_week <-
  function(x = Sys.Date(), 
           part = getOption("timeperiodsR.parts"),
           week_start = 1) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
  start <- floor_date( x, unit = "week", week_start)
  stop  <- start + days(6) 
  out   <- custom_period(start, stop)
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
