this_week <-
function(from = Sys.Date(),
                      week_start = 1) {
  
  start <- floor_date( from, unit = "week", week_start)
  stop  <- start + days(6) 
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This week from", from))
  class(out) <- "tpr"
  
  return(out)
}
