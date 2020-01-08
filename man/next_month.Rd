\name{next_month}
\alias{next_month}
\title{
Start and end of next month
}
\description{
Defines first and last date in next month and all dates in month
}
\usage{
next_month(x = Sys.Date(),
           n = 1, 
           part = getOption("timeperiodsR.parts"))
}
\arguments{
  \item{x}{Date object}
  \item{n}{Number of periods for offset}
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
For get next other periods see \code{\link[timeperiodsR:next_week]{next_week()}}, \code{\link[timeperiodsR:next_quarter]{next_quarter()}}, \code{\link[timeperiodsR:next_year]{next_year()}}
}
\examples{
## To get start, end and sequence of next month
nextmonth <- next_month()

## To get vector of date sequences 
next_month(part = "sequence")
next_month()$sequence
seq(nextmonth)

## Get number of days of next months
day_nums <- next_month(part = "length")
next_month()$length
length(nextmonth)
}
