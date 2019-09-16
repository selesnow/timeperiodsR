\name{next_quarter}
\alias{next_quarter}
\title{
Start and end of next quarter
}
\description{
Defines first and last date in n next quarter
}
\usage{
next_quarter(x = Sys.Date(),
             n = 1, 
             part = c("all", "start", 
			          "end","sequence", "length"))
}
%- maybe also 'usage' for other objects documented here.
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
For get next other periods see \code{\link[timeperiodsR:next_week]{next_week()}}, \code{\link[timeperiodsR:next_month]{next_month()}}, \code{\link[timeperiodsR:next_year]{next_year()}}
}
\examples{
## To get start, end and sequence of next quarter
nextquarter <- next_quarter()

## To get vector of date sequences 
next_quarter(part = "sequence")
next_quarter()$sequence
seq(nextquarter)

## Get number of days of next quarter
day_nums <- next_quarter(part = "length")
next_quarter()$length
length(nextquarter)
}

