\name{next_n_months}
\alias{next_n_months}
\title{
Start and end of next n months
}
\description{
Defines first and last date in next period
}
\usage{
next_n_months(x = Sys.Date(), 
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
For get next other periods see \code{\link[timeperiodsR:next_n_quarters]{next_n_quarters()}}, \code{\link[timeperiodsR:next_n_days]{next_n_days()}}, \code{\link[timeperiodsR:next_n_years]{next_n_years()}}, \code{\link[timeperiodsR:next_n_weeks]{next_n_weeks()}}
}
\examples{
## To get start, end and sequence of next 2 months, 
## exclude current month
next2month <- next_n_months(n = 2)

## include current month
next2month_2 <- next_n_months(n = 2, include_current = T)

## To get vector of date sequences 
next_n_months(n = 2, part = "sequence")
next_n_months(n = 2)$sequence
seq(next2month)

## Get number of days of next 2 months
day_nums <- next_n_months(part = "length")
next_n_months()$length
length(next2month)
}
