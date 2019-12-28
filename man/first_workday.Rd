\name{first_workday}
\alias{first_workday}
\title{
Get first workday day in period.
}
\description{
Method for get first workday in timeperiod.
}
\usage{
first_workday(x)
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
# get first workday
pm_first_workday <- first_workday(pm)
}
