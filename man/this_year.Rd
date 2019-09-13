\name{this_year}
\alias{this_year}
\title{
Start and end of year
}
\description{
Defines first and last date in year
}
\usage{
this_year(x = Sys.Date(),
          part = c("all", "start", "end", 
		           "sequence", "length"))
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
For get next other periods see \code{\link[timeperiodsR:this_week]{this_week()}}, \code{\link[timeperiodsR:this_month]{this_month()}}, \code{\link[timeperiodsR:this_year]{this_year()}}
}
\examples{
## To get start of next month
snm2 <- this_year()

## To get start and end of next month
snm1 <- this_year(part = "start")

### or
snm2 <- this_year()$start

## identical test
identical(snm, snm2)

## To get of next month
enm1 <- snm2 <- this_year()$end
enm2 <- snm2 <- this_year(part = "end")

## To get all dates from next month
days_in_nm_vector1 <- seq(nm)
### or
days_in_nm_vector2 <- this_year(part = "sequence")
days_in_nm_vector3 <- this_year()$sequence

## Get number of days in next month
day_nums <- this_year(part = "length")
this_year()$length
}
