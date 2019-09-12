previous_month <-
function(n = 1, from = Sys.Date()) {
  
  start <- floor_date( from, unit = "month" ) - months(n)
  stop  <- start + months(1) - days(1)
  pular <- ifelse( n > 1, "s", "")
  
  nname <- paste0("month", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "ago"))
  class(out) <- "tpr"
  
  return(out) 
}
