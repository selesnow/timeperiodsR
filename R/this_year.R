this_year <-
function(from = Sys.Date()) {
  
  start <- floor_date( from, unit = "year" )
  stop  <- ceiling_date( from, unit = "year" ) - days(1)
  
  out   <- list(start  = start,
                end    = stop,
                values = paste("This year from", from))
  class(out) <- "tpr"
  
  return(out)
}
