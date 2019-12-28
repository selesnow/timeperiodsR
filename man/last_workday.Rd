\name{last_workday}
\alias{last_workday}
\title{
Get last workday day in period.
}
\description{
Method for get last workday in timeperiod.
}
\usage{
last_workday(x)
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
# get last workday
pm_last_workday <- last_workday(pm)
}
