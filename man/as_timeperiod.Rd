\name{as_timeperiod}
\alias{as_timeperiod}
\title{
Convert date or string vector to timeperiod.
}
\description{
Convert any date or string vector to tpr class.
}
\usage{
as_timeperiod(x)
}
\arguments{
  \item{x}{Date or string vector}
}
\value{Object of tpr class}
\author{
Alexey Seleznev
}
\seealso{
See \code{\link[timeperiodsR:custom_period]{custom_period()}}
}
\examples{
dates <- as.Date(c("2019-09-11", 
                   "2019-09-02", 
				   "2019-10-11", 
				   "2019-08-30"))
				   
dates_tpr <- as_timeperiod(dates)
}
