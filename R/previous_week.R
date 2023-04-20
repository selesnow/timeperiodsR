previous_week <-
function(x = Sys.Date(),
         n = 1, 
         part = getOption("timeperiodsR.parts"),
         week_start = 1){
  
  if ( ! inherits(x, "Date") ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "week", week_start ) - weeks(n) 
  stop  <- start + days(6)
  out   <- custom_period(start, stop)
  
  
  part <- match.arg(part, getOption("timeperiodsR.parts"))
  
  if ( part == "all" ) {
    return(out) 
  } else {
    return(out[[part]]) 
  } 
}
