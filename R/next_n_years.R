next_n_years <-
function(x = Sys.Date(),
           n = 1, 
           part = c("all", "start", "end", "sequence", "length"),
           include_current = F){
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "year" ) + years(ifelse( isTRUE(include_current), 0, 1) )
    stop  <- ceiling_date( x, unit = "year" ) + years(n) - days(1)
    out   <- custom_period(start, stop)
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
  }
