\name{next_n_days}
\alias{next_n_days}
\title{
Start and end of next n days
}
\description{
Defines first and last date in next period
}
\usage{
next_n_days(x = Sys.Date(), 
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
For get next other periods see \code{\link[timeperiodsR:next_n_quarters]{next_n_quarters()}}, \code{\link[timeperiodsR:next_n_months]{next_n_months()}}, \code{\link[timeperiodsR:next_n_years]{next_n_years()}}, \code{\link[timeperiodsR:next_n_weeks]{next_n_weeks()}}
}
\examples{
## To get start, end and sequence of next 10 days, 
## exclude today
next10days <- next_n_days(n = 10)

## include today
next10days_2 <- next_n_days(n = 10, include_current = T)

## To get vector of date sequences 
next_n_days(n = 10, part = "sequence")
next_n_days(n = 10)$sequence
seq(next10days)
}