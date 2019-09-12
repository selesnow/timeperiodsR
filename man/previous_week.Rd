\name{previous_week}
\alias{previous_week}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Start and end of previous week
}
\description{
Defines first and last date in n previous week
}
\usage{
previous_week(n = 1, from = Sys.Date(), week_start = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{n} here~~
}
  \item{from}{
%%     ~~Describe \code{from} here~~
}
  \item{week_start}{
%%     ~~Describe \code{week_start} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (n = 1, from = Sys.Date(), week_start = 1) 
{
    start <- floor_date(from, unit = "week", week_start) - weeks(n)
    stop <- start + weeks(n) - days(1)
    nname <- paste0("week", pular)
    out <- list(start = start, end = stop, values = paste(n, 
        nname, "ago"))
    class(out) <- "tpr"
    return(out)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
