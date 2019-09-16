\name{previous_year}
\alias{previous_year}
\title{
Start and end of previous year
}
\description{
Defines first and last date in n previous year
}
\usage{
previous_year(x = Sys.Date(),
              n = 1, 
              part = c("all", "start", 
			           "end","sequence", "length"))
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
For get next other periods see \code{\link[timeperiodsR:previous_week]{previous_week()}}, \code{\link[timeperiodsR:previous_month]{previous_month()}}, \code{\link[timeperiodsR:previous_quarter]{previous_quarter()}}
}
\examples{
## To get start, end and sequence of previous year
previousyear <- previous_year()

## To get vector of date sequences 
previous_year(part = "sequence")
previous_year()$sequence
seq(previousyear)

## Get number of days of previous year
day_nums <- previous_year(part = "length")
previous_year()$length
length(previousyear)
}

