next_month <-
function(n = 1, from = Sys.Date()){
  
  start <- floor_date( from, unit = "month" ) + months(n)
  stop  <- start + months(1) - days(1)
  
  nname <- paste0("month", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "in advance"))
  class(out) <- "tpr"
  
  return(out) 
}
