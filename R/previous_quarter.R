previous_quarter <-
function(x = Sys.Date(),
         n = 1, 
         part = getOption("timeperiodsR.parts")) {
  
  if ( ! inherits(x, "Date") ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "quarter" ) - months(3 * n) 
  stop  <- start + months(3) - days(1)
  out   <- custom_period(start, stop)
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
