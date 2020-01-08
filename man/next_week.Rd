\name{next_week}
\alias{next_week}
\title{
Start and end of next week
}
\description{
Defines first and next date in n next week
}
\usage{
next_week(x = Sys.Date(),
          n = 1, 
          part = getOption("timeperiodsR.parts"),
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
  \item end - get only next date of period
  \item start - get vector of all dates in period
  \item length - get number of dates in period
}
}
\value{Object of tpr class}
\author{
Alexey Seleznev
}
\seealso{
For get next other periods see \code{\link[timeperiodsR:next_month]{next_month()}}, \code{\link[timeperiodsR:next_quarter]{next_quarter()}}, \code{\link[timeperiodsR:next_year]{next_year()}}
}
\examples{
## To get start, end and sequence of next weeks
nextweek <- next_week()

## Get next week with start on Sunday
nextweeksun <- next_week(week_start = 7)

## To get vector of date sequences 
next_week(part = "sequence")
next_week()$sequence
seq(nextweek)

## Get number of days of next 2 weeks
day_nums <- next_week(part = "length")
next_week()$length
length(nextweek)
}
