custom_period <- function( start, 
                           end,
                           part = c("all", "start", "end", 
                                    "sequence", "weekdays", 
                                    "weekends", "first_weekday", 
                                    "last_weekday", "first_weekend",
                                    "last_weekend", "length")) {
  
    if ( ! "Date" %in% class(start) ) {
      start <- as.Date(start)
    }
    
    if ( ! "Date" %in% class(end) ) {
      end <- as.Date(end)
    }
    
    sequence <- seq.Date(from = start, to = end, by = "day")
    weekdays <- sequence[ ! format(sequence, "%w") %in% c("0", "6") ]
    weekends <- sequence[ format(sequence, "%w") %in% c("0", "6") ]
    
    out   <- list(start         = start,
                  end           = end,                
                  sequence      = sequence,
                  weekdays      = weekdays,
                  weekends      = weekends,
                  first_weekday = min(weekdays),
                  last_weekday  = max(weekdays),
                  first_weekend = min(weekends),
                  last_weekend  = max(weekends),
                  length        = length(sequence))
    
    class(out) <- "tpr"
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", "sequence", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
}
