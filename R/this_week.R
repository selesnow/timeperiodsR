this_week <-
function(x = Sys.Date(),
         n = 1, 
         part = c("both", "start", "end"),
         week_start = 1) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "week", week_start)
  stop  <- start + days(6) 
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This week from", from))
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
