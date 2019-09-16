\name{last_n_years}
\alias{last_n_years}
\title{
Start and end of last n years
}
\description{
Defines first and last date in previous period
}
\usage{
last_n_years(x = Sys.Date(), 
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
For get next other periods see \code{\link[timeperiodsR:last_n_months]{last_n_months()}}, \code{\link[timeperiodsR:last_n_days]{last_n_days()}}, \code{\link[timeperiodsR:last_n_weeks]{last_n_weeks()}}, \code{\link[timeperiodsR:last_n_quarters]{last_n_quarters()}}
}
\examples{
## To get start, end and sequence of last 2 years, 
## exclude current year
last2years <- last_n_years(n = 2)

## include current year
last2years_2 <- last_n_years(n = 2, include_current = T)

## To get vector of date sequences 
last_n_years(n = 2, part = "sequence")
last_n_years(n = 2)$sequence
seq(last2years)

## Get number of days of last 2 years
day_nums <- last_n_years(n = 2, part = "length")
last_n_years()$length
length(last2years)
}
