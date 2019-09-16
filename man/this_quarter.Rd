\name{this_quarter}
\alias{this_quarter}
\title{
Start and end of quarter
}
\description{
Defines first and last date in quarter
}
\usage{
this_quarter(x = Sys.Date(),
             part = c("all", "start", "end", 
			          "sequence", "length"))
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
For get next other periods see \code{\link[timeperiodsR:this_week]{this_week()}}, \code{\link[timeperiodsR:this_month]{this_month()}}, \code{\link[timeperiodsR:this_year]{this_year()}}
}
\examples{
## To get start, end and sequence of this quarter
thisquarter <- this_quarter()

## To get vector of date sequences 
this_quarter(part = "sequence")
this_quarter()$sequence
seq(thisquarter)

## Get number of days of this quarter
day_nums <- this_quarter(part = "length")
this_quarter()$length
length(thisquarter)
}
