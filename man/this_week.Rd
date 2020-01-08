\name{this_week}
\alias{this_week}
\title{
Start and end of week
}
\description{
Defines first and last date in week
}
\usage{
this_week(x = Sys.Date(), 
          part = getOption("timeperiodsR.parts"), 
		      week_start = 1)
}
\arguments{
  \item{x}{Date object}
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
For get next other periods see \code{\link[timeperiodsR:this_quarter]{this_quarter()}}, \code{\link[timeperiodsR:this_month]{this_month()}}, \code{\link[timeperiodsR:this_year]{this_year()}}
}
\examples{
## To get start, end and sequence of this weeks
thisweek <- this_week()

## Get this week with start on Sunday
thisweeksun <- this_week(week_start = 7)

## To get vector of date sequences 
this_week(part = "sequence")
this_week()$sequence
seq(thisweek)

## Get number of days of this 2 weeks
day_nums <- this_week(part = "length")
this_week()$length
length(thisweek)
}

