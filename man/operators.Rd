\name{tpr_operators}
\alias{\%.in\%}
\alias{\%left_in\%}
\alias{\%left_out\%}
\alias{\%right_in\%}
\alias{\%right_out\%}
\title{
Operators of tpr objects.
}
\description{
Filtring timeperiods operators.
}
\usage{
x \%.in\% y 
x \%left_in\% y
x \%left_out\% y
x \%right_in\% y
x \%right_out\% y
}
\arguments{
  \item{x}{left Date or tpr object}
  \item{y}{Right tpr object.}
}
\value{Date sequence or logical vector}
\author{
Alexey Seleznev
}
\seealso{
For get more examples see vignette: \code{vignette("tpr_intro", package = "timeperiodsR")}
}
\examples{
period1 <- this_month("2019-11-07")
period2 <- previous_week("2019-11-07")

period1 %left_in% period2   
period1 %left_out% period2  
period1 %right_in% period2  
period1 %right_out% period2 
}