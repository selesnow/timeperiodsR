previous_month <-
function(x = Sys.Date(),
         n = 1, 
         part = getOption("timeperiodsR.parts")) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "month" ) - months(n)
  stop  <- start + months(1) - days(1)
  out   <- custom_period(start, stop)
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
