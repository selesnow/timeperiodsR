previous_year <-
function(n = 1, from = Sys.Date()){
  
  start <- floor_date( from, unit = "year" ) - years(n)
  stop  <- start + years(n) - days(1)
  
  nname <- paste0("year", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "ago"))
  class(out) <- "tpr"
  
  return(out) 
}
