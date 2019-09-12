this_month <-
function(from = Sys.Date()) {
  
  start <- floor_date( from, unit = "quarter" )
  stop  <- ceiling_date( from, unit = "quarter" ) - days(1)
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This month from", from))
  class(out) <- "tpr"
  
  return(out)
}
