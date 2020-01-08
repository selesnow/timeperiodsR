this_year <-
  function(x = Sys.Date(),
           part = getOption("timeperiodsR.parts")) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "year" )
    stop  <- ceiling_date( x, unit = "year" ) - days(1)
    out   <- custom_period(start, stop)
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
