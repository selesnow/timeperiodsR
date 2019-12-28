\name{custom_period}
\alias{custom_period}
\title{
Custopm period
}
\description{
Create tpr object between start and end dates
}
\usage{
custom_period( start, 
               end,
               part = c("all", "start", "end", 
                        "sequence", "workdays", 
                        "weekends", "first_workday", 
                        "last_workday", "first_weekend",
                        "last_weekend", "length")) 
}
\arguments{
  \item{start}{Start date in YYYY-MM-DD format}
  \item{end}{End date in YYYY-MM-DD format}
  \item{part}{Part of period you need to receive, one of "all", "start", "end","sequence", "length", "workdays", "weekends", "first_workday", "last_workday", "first_weekend", "last_weekend", "length". See details.}
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
\examples{
## To create tpr object between two dates
customper <- custom_period(start = "2019-09-01",
                           end   = "2019-09-05")

## To get vector of date sequences 
seq(customper)

## Get number of days of previous months
length(customper)

## To get start of end dates
start(customper)
end(customper)
}
