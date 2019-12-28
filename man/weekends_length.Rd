\name{weekends_length}
\alias{weekends_length}
\title{
Number of weekdends days in the period.
}
\description{
Method for get number of weekdays days in period. Weekends is suturday and sunday.
}
\usage{
weekends_length(x)
}
\arguments{
  \item{x}{tpr object or date vector}
}
\value{Integer}
\author{
Alexey Seleznev
}

\examples{
pm <- previous_month()
# weekends day number
pm_wd_len <- weekends_length(pm)
}
