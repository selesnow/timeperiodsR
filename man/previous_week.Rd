\name{previous_week}
\alias{previous_week}
\title{
Start and end of previous week
}
\description{
Defines first and last date in n previous week
}
\usage{
previous_week(x = Sys.Date(),
              n = 1, 
              part = c("all", "start", 
			           "end","sequence", "length"),
              week_start = 1)
}
\arguments{
  \item{x}{Date object}
  \item{n}{Number of periods for offset}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length". See details.}
  \item{week_start}{Start of week, default = 1 is Monday, 7 is Sunday}
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
For get next other periods see \code{\link[timeperiodsR:previous_quarter]{previous_quarter()}}, \code{\link[timeperiodsR:previous_month]{previous_month()}}, \code{\link[timeperiodsR:previous_year]{previous_year()}}
}
\examples{
## To get start of next month
snm2 <- previous_week()

## To get start and end of next month
snm1 <- previous_week(part = "start")

### or
snm2 <- previous_week()$start

## identical test
identical(snm, snm2)

## To get of next month
enm1 <- snm2 <- previous_week()$end
enm2 <- snm2 <- previous_week(part = "end")

## To get all dates from next month
days_in_nm_vector1 <- seq(nm)
### or
days_in_nm_vector2 <- previous_week(part = "sequence")
days_in_nm_vector3 <- previous_week()$sequence

## Get number of days in next month
day_nums <- previous_week(part = "length")
previous_week()$length
}
