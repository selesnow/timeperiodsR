\name{first_weekend}
\alias{first_weekend}
\title{
Get first weekend day in period.
}
\description{
Method for get first weekend in timeperiod.
}
\usage{
first_weekend(x)
}
\arguments{
  \item{x}{tpr object or date vector}
}
\value{Vector of dates}
\author{
Alexey Seleznev
}

\examples{
pm <- previous_month()
# get first weekend
pm_first_weekend <- first_weekend(pm)
}
