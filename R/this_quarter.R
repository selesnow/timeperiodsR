this_quarter <-
function(x = Sys.Date(),
         n = 1, 
         part = c("both", "start", "end")) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "quarter" )
  stop  <- ceiling_date( x, unit = "quarter" ) - days(1)
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This quarter from", from))
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
