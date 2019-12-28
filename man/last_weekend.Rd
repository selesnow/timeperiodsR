\name{last_weekend}
\alias{last_weekend}
\title{
Get last weekend day in period.
}
\description{
Method for get last weekend in timeperiod.
}
\usage{
last_weekend(x)
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
# get last weekend
pm_last_weekend <- last_weekend(pm)
}
