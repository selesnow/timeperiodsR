previous_year <-
function(x = Sys.Date(),
         n = 1, 
         part = c("both", "start", "end")){
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "year" ) - years(n)
  stop  <- start + years(1) - days(1)
  
  pular <- ifelse( n > 1, "s", "")
  
  nname <- paste0("year", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "ago from", x))
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  } 
}
