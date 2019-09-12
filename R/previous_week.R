previous_week <-
function(x = Sys.Date(),
         n = 1, 
         part = c("all", "start", "end", "sequence", "length"),
         week_start = 1){
  
  if ( ! "Date" %in% class(x) ) {
    x <- as.Date(x)
  }
  
  start <- floor_date( x, unit = "week", week_start ) - weeks(n) 
  stop  <- start + days(6)
  sequence <- seq.Date(from = start, to = stop, by = "day")
  
  pular <- ifelse( n > 1, "s", "")
  
  nname <- paste0("week", pular)
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
