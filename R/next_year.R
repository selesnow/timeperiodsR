next_year <-
function(n = 1, from = Sys.Date()){
  
  start <- floor_date( from, unit = "year" ) + years(n)
  stop  <- start + years(n) - days(1)
  
  nname <- paste0("month", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "in advance"))
  class(out) <- "tpr"
  
  return(out) 
}
