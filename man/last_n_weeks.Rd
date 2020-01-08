\name{last_n_weeks}
\alias{last_n_weeks}
\title{
Start and end of last n weeks
}
\description{
Defines first and last date in previous period
}
\usage{
last_n_weeks(x = Sys.Date(), 
             n = 1, 
			       part = getOption("timeperiodsR.parts"), 
			       week_start = 1, 
			       include_current = F)
}
\arguments{
  \item{x}{Date object}
  \item{n}{Number of periods for offset}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length". See details.}
  \item{week_start}{Start of week, default = 1 is Monday, 7 is Sunday}
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
For get next other periods see \code{\link[timeperiodsR:last_n_months]{last_n_months()}}, \code{\link[timeperiodsR:last_n_days]{last_n_days()}}, \code{\link[timeperiodsR:last_n_years]{last_n_years()}}, \code{\link[timeperiodsR:last_n_quarters]{last_n_quarters()}}
}
\examples{
## To get start, end and sequence of last 2 weeks, 
## exclude current week
last2weeks <- last_n_weeks(n = 2)

## include current week
last2weeks_2 <- last_n_weeks(n = 2, include_current = TRUE)

## Get last 2 week with start on Sunday
lastWeek <- last_n_weeks(n = 2, week_start = 7)

## To get vector of date sequences 
last_n_weeks(n = 2, part = "sequence")
last_n_weeks(n = 2)$sequence
seq(last2weeks)

## Get number of days of last 2 weeks
day_nums <- last_n_weeks(n = 2, part = "length")
last_n_weeks()$length
length(last2weeks)
}

