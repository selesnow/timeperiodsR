\name{previous_month}
\alias{previous_month}
\title{
Start and end of previous month
}
\description{
Defines first and last date in n previous month
}
\usage{
previous_month(x = Sys.Date(),
               n = 1, 
               part = c("all", "start", 
			            "end","sequence", "length"))
}
\arguments{
  \item{x}{Date object}
  \item{n}{Number of periods for offset}
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
For get next other periods see \code{\link[timeperiodsR:previous_week]{previous_week()}}, \code{\link[timeperiodsR:previous_quarter]{previous_quarter()}}, \code{\link[timeperiodsR:previous_year]{previous_year()}}
}
\examples{
## To get start of next month
snm2 <- previous_month()

## To get start and end of next month
snm1 <- previous_month(part = "start")

### or
snm2 <- previous_month()$start

## identical test
identical(snm, snm2)

## To get of next month
enm1 <- snm2 <- previous_month()$end
enm2 <- snm2 <- previous_month(part = "end")

## To get all dates from next month
days_in_nm_vector1 <- seq(nm)
### or
days_in_nm_vector2 <- previous_month(part = "sequence")
days_in_nm_vector3 <- previous_month()$sequence

## Get number of days in next month
day_nums <- previous_month(part = "length")
previous_month()$length
}
