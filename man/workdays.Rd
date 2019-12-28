\name{workdays}
\alias{workdays}
\title{
Get vector with workdays.
}
\description{
Method for get vector of workdays from timeperiod.
}
\usage{
workdays(x)
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
# get workdays
pm_workdays <- workdays(pm)
}
