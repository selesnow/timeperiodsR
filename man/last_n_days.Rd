\name{last_n_days}
\alias{last_n_days}
\title{
Start and end of previous quarter
}
\description{
Defines first and last date in previous period
}
\usage{
last_n_days(x = Sys.Date(), 
            n = 1, 
			part = c("all", "start", "end", 
			         "sequence", "length"), 
		    include_current = F)
}
\arguments{
  \item{x}{Date object}
  \item{n}{Number of periods for offset}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length". See details.}
  \item{include_current}{If TRUE incliding current period in sequence}
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
For get next other periods see \code{\link[timeperiodsR:last_n_quarters]{last_n_quarters()}}, \code{\link[timeperiodsR:last_n_months]{last_n_months()}}, \code{\link[timeperiodsR:last_n_years]{last_n_years()}}, \code{\link[timeperiodsR:last_n_weeks]{last_n_weeks()}}
}
\examples{
## To get start of next month
snm2 <- last_n_days()

## To get start and end of next month
snm1 <- last_n_days(part = "start")

### or
snm2 <- last_n_days()$start

## identical test
identical(snm, snm2)

## To get of next month
enm1 <- snm2 <- last_n_days()$end
enm2 <- snm2 <- last_n_days(part = "end")

## To get all dates from next month
days_in_nm_vector1 <- seq(nm)
### or
days_in_nm_vector2 <- last_n_days(part = "sequence")
days_in_nm_vector3 <- last_n_days()$sequence

## Get number of days in next month
day_nums <- last_n_days(part = "length")
last_n_days()$length
}
