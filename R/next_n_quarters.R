next_n_quarters <-
  function(x = Sys.Date(),
           n = 1, 
           part = c("all", "start", "end", "sequence", "length"),
           include_current = F) {
    
    if ( ! "Date" %in% class(x) ) {
      x <- as.Date(x)
    }

    start <- floor_date( x, unit = "quarter" ) + months(ifelse( isTRUE(include_current), 0, 3)) 
    stop  <- ceiling_date( x, unit = "quarter" ) + months(n * 3) - days(1)
    sequence <- seq.Date(from = start, to = stop, by = "day")
    
    pular <- ifelse( n > 1, "s", "")
    
    nname <- paste0("quarter", pular)
    out   <- list(start  = start,
                  end    = stop,
                  sequence = sequence,
                  length   =  length(sequence),
                  values = paste(n, nname, "in advance from", x))
    class(out) <- "tpr"
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    }
  }
