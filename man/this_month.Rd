\name{this_month}
\alias{this_month}
\title{
Start and end of month
}
\description{
Defines first and last date in month
}
\usage{
this_month(x = Sys.Date(),
           part = getOption("timeperiodsR.parts"))
}
\arguments{
  \item{x}{Date object}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length". See details.}
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
For get next other periods see \code{\link[timeperiodsR:this_week]{this_week()}}, \code{\link[timeperiodsR:this_quarter]{this_quarter()}}, \code{\link[timeperiodsR:this_year]{this_year()}}
}
\examples{
## To get start, end and sequence of this month
thismonth <- this_month()

## To get vector of date sequences 
this_month(part = "sequence")
this_month()$sequence
seq(thismonth)

## Get number of days of this months
day_nums <- this_month(part = "length")
this_month()$length
length(thismonth)
}
