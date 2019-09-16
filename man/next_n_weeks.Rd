\name{next_n_weeks}
\alias{next_n_weeks}
\title{
Start and end of next n weeks
}
\description{
Defines first and last date in next period
}
\usage{
next_n_weeks(x = Sys.Date(), 
             n = 1, part = c("all", "start", "end", 
			                 "sequence", "length"), 
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
## To get start, end and sequence of next 2 weeks, 
## exclude current week
next2weeks <- next_n_weeks(n = 2)

## include current week
next2weeks_2 <- next_n_weeks(n = 2, include_current = T)

## Get next 2 week with start on Sunday
nextWeek <- next_n_weeks(n = 2, week_start = 7)

## To get vector of date sequences 
next_n_weeks(n = 2, part = "sequence")
next_n_weeks(n = 2)$sequence
seq(next2weeks)

## Get number of days of next 2 weeks
day_nums <- next_n_weeks(part = "length")
next_n_weeks()$length
length(next2weeks)
}

