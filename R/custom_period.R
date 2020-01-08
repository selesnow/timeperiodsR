custom_period <- function( start, 
                           end,
                           part = getOption("timeperiodsR.parts")) {
  
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
                  weekends_length = length(weekends))
    
    if ( getOption( "timeperiodsR.official_day_offs" ) | ! is.null(getOption( "timeperiodsR.custom_day_offs" )) ) {
      
        out$dayoffs_marks     <- check_dayoffs(date = as.character(sequence))
        
        out$official_day_offs <- sequence[ out$dayoffs_marks %in% c("1", "2", "3") ]
        out$official_workdays <- sequence[ ! out$dayoffs_marks %in% c("1", "2", "3") ]
        out$official_first_workday <- min(out$official_workdays)
        out$official_last_workday  <- max(out$official_workdays)
        out$custom_day_offs <- sequence[ out$dayoffs_marks == "3" ]
        
    } 
    
    class(out) <- "tpr"
    
    part <- match.arg(part, getOption("timeperiodsR.parts"))
    
    if ( part == "all" ) {
      return(out) 
    } else {
      return(out[[part]]) 
    } 
}
