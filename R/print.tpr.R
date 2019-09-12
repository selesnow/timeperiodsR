print.tpr <-
function(x) {
  cat("\n", 
      "Time period:", x$values, "\n",
      "Date start:", format(as.Date(x$start), "%e %B of %Y, %A"), "\n",
      "Date end:   ", format(as.Date(x$end), "%e %B of %Y, %A"))
}
