this_year <-
function(x = Sys.Date(),
         part = c("both", "start", "end")) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "year" )
  stop  <- ceiling_date( x, unit = "year" ) - days(1)
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This year from", from))
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
