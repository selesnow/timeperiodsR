next_year <-
function(x = Sys.Date(),
         n = 1, 
         part = getOption("timeperiodsR.parts")){
  
  if ( ! inherits(x, "Date") ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "year" ) + years(n)
  stop  <- start + years(1) - days(1)
  out   <- custom_period(start, stop)
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
