custom_period <- function( start, 
                           end,
                           part = c("all", "start", "end", "sequence", "length")) {
  
    if ( ! "Date" %in% class(start) ) {
      start <- as.Date(start)
    }
    
    if ( ! "Date" %in% class(end) ) {
      end <- as.Date(end)
    }
    
    sequence <- seq.Date(from = start, to = end, by = "day")
    
    out   <- list(start    = start,
                  end      = end,                
                  sequence = sequence,
                  length   =  length(sequence),
                  values = paste("Custom period from", start, "to", end))
    
    class(out) <- "tpr"
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
}