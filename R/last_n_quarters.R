last_n_quarters <-
function(x = Sys.Date(),
           n = 1, 
           part = c("all", "start", "end", "sequence", "length"),
           include_current = F) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "quarter" ) - months(3 * n) 
    stop  <- start + months(3 * n) - days(1) + months(ifelse( isTRUE(include_current), 3, 0))
    
    out   <- custom_period(start, stop)
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
  }
