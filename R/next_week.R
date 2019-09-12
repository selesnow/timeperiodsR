next_week <-
function(n = 1, 
                      from = Sys.Date(),
                      week_start = 1){
  
  start <- floor_date( from, unit = "week", week_start ) + weeks(n) 
  stop  <- start + weeks(n) - days(1)
  
  nname <- paste0("week", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "in advance"))
  class(out) <- "tpr"
  return(out) 
}
