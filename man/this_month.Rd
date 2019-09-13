\name{this_month}
\alias{this_month}
\title{
Start and end of month
}
\description{
Defines first and last date in month
}
\usage{
this_month(x = Sys.Date(),
           part = c("all", "start", "end", "sequence", "length"))
}
\arguments{
  \item{x}{Date object}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length". See details.}
}
\details{
You can get object of tpr class with all components or specify which component you need, use \code{part} for manage this option:
\itemize{
  \item all - get all components
  \item start - get only first date of period
  \item end - get only last date of period
  \item start - get vector of all dates in period
  \item length - get number of dates in period
}
}
\value{Object of tpr class}
\author{
Alexey Seleznev
}
\seealso{
For get next other periods see \code{\link[timeperiodsR:this_week]{this_week()}}, \code{\link[timeperiodsR:this_quarter]{this_quarter()}}, \code{\link[timeperiodsR:this_year]{this_year()}}
}
\examples{
## To get start of next month
snm2 <- this_month()

## To get start and end of next month
snm1 <- this_month(part = "start")

### or
snm2 <- this_month()$start

## identical test
identical(snm, snm2)

## To get of next month
enm1 <- snm2 <- this_month()$end
enm2 <- snm2 <- this_month(part = "end")

## To get all dates from next month
days_in_nm_vector1 <- seq(nm)
### or
days_in_nm_vector2 <- this_month(part = "sequence")
days_in_nm_vector3 <- this_month()$sequence

## Get number of days in next month
day_nums <- this_month(part = "length")
this_month()$length
}
