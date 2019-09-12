previous_quarter <-
function(n = 1, 
                             from = Sys.Date()) {
  
  start <- floor_date( from, unit = "quarter" ) - months(3 * n) 
  stop  <- start + months(3) - days(1)
  
  nname <- paste0("quarter", pular)
  out   <- list(start  = start,
                end    = stop,
                values = paste(n, nname, "ago"))
  class(out) <- "tpr"
  
  return(out) 
}
