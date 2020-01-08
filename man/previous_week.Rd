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
## To get start, end and sequence of previous weeks
previousweek <- previous_week()

## Get previous week with start on Sunday
previousweeksun <- previous_week(week_start = 7)

## To get vector of date sequences 
previous_week(part = "sequence")
previous_week()$sequence
seq(previousweek)

## Get number of days of previous 2 weeks
day_nums <- previous_week(part = "length")
previous_week()$length
length(previousweek)
}
