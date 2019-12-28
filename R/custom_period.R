custom_period <- function( start, 
                           end,
                           part = c("all", "start", "end", 
                                    "sequence", "workdays", 
                                    "weekends", "first_workday", 
                                    "last_workday", "first_weekend",
                                    "last_weekend", "length")) {
  
    if ( ! "Date" %in% class(start) ) {
      start <- as.Date(start)
    }
    
    if ( ! "Date" %in% class(end) ) {
      end <- as.Date(end)
    }
    
    sequence <- seq.Date(from = start, to = end, by = "day")
    workdays <- sequence[ ! format(sequence, "%w") %in% c("0", "6") ]
    weekends <- sequence[ format(sequence, "%w") %in% c("0", "6") ]
    
    out   <- list(start           = start,
                  end             = end,                
                  sequence        = sequence,
                  workdays        = workdays,
                  weekends        = weekends,
                  first_workday   = min(workdays),
                  last_workday    = max(workdays),
                  first_weekend   = min(weekends),
                  last_weekend    = max(weekends),
                  length          = length(sequence),
                  workdays_length = length(workdays),
                  weekend_length  = length(weekends))
    
    class(out) <- "tpr"
    
    part <- match.arg(part)
    
    if ( part %in% c("start", "end", 
                     "sequence", "workdays", 
                     "weekends", "first_workday", 
                     "last_workday", "first_weekend",
                     "last_weekend", "length") ) {
      return(out[[part]]) 
    } else {
      return(out) 
    } 
}
