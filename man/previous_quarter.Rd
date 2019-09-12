\name{previous_quarter}
\alias{previous_quarter}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Start and end of previous quarter
}
\description{
Defines first and last date in n previous quarter
}
\usage{
previous_quarter(n = 1, from = Sys.Date())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{n} here~~
}
  \item{from}{
%%     ~~Describe \code{from} here~~
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
function (n = 1, from = Sys.Date()) 
{
    start <- floor_date(from, unit = "quarter") - months(3 * 
        n)
    stop <- start + months(3) - days(1)
    nname <- paste0("quarter", pular)
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
