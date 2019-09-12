last_n_years <-
  function(x = Sys.Date(),
           n = 1, 
           part = c("all", "start", "end", "sequence", "length"),
           include_current = F){
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }
    
    start <- floor_date( x, unit = "year" ) - years(n)
    stop  <- start + years(n) - days(1) + years(ifelse(include_current, 1, 0))
    sequence <- seq.Date(from = start, to = stop, by = "day")
    
    pular <- ifelse( n > 1, "s", "")
    
    nname <- paste0("year", pular)
    out   <- list(start  = start,
                  end    = stop,
                  sequence = sequence,
                  length   =  length(sequence),
                  values = paste(n, nname, "ago from", x))
    
    class(out) <- "tpr"
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
  }
