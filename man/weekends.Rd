\name{weekends}
\alias{weekends}
\title{
Get vector with weekends.
}
\description{
Method for get vector of weekends from timeperiod.
}
\usage{
weekends(x)
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
# get weekends
pm_weekends <- weekends(pm)
}
