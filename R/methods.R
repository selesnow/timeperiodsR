print.tpr <-
function(x) {
  cat("\n", 
      "Time period:", x$values, "\n",
      "Date start:", format(as.Date(x$start), "%e %B of %Y, %A"), "\n",
      "Date end:   ", format(as.Date(x$end), "%e %B of %Y, %A"))
}

seq.tpr <- function(x, by = "day") {
  out <- seq.Date(from = x$start,
                  to = x$end, 
                  by = by)
  return(out)
}

length.tpr <- function(x) {
  out <- length(x$sequence)

  return(out)
}