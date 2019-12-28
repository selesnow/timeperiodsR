\name{workdays_length}
\alias{workdays_length}
\title{
Number of workdays in the period.
}
\description{
Method for get number of workdays in period. workdays is monday - friday.
}
\usage{
workdays_length(x)
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
# workdays number
pm_wd_len <- workdays_length(pm)
}
