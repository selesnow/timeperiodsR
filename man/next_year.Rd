\name{next_year}
\alias{next_year}
\title{
Start and end of next year
}
\description{
Defines first and last date in n next year
}
\usage{
next_year(x = Sys.Date(),
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
For get next other periods see \code{\link[timeperiodsR:next_month]{next_month()}}, \code{\link[timeperiodsR:next_quarter]{next_quarter()}}, \code{\link[timeperiodsR:next_week]{next_week()}}
}
\examples{
## To get start, end and sequence of next year
nextyear <- next_year()

## To get vector of date sequences 
next_year(part = "sequence")
next_year()$sequence
seq(nextyear)

## Get number of days of next year
day_nums <- next_year(part = "length")
next_year()$length
length(nextyear)
}
