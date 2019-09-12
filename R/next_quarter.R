next_quarter <-
function(x = Sys.Date(),
         n = 1, 
         part = c("both", "start", "end")) {
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "quarter" ) + months(3 * n) 
  stop  <- start + months(3) - days(1)
  
  pular <- ifelse( n > 1, "s", "")
  
  nname <- paste0("quarter", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "in advance from", x))
  class(out) <- "tpr"
  
  part <- match.arg(part)
  
  if ( part %in% c("start", "end") ) {
    return(out[[part]]) 
  } else {
    return(out) 
  }
}
