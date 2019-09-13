\name{next_n_weeks}
\alias{next_n_weeks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
next_n_weeks(x = Sys.Date(), n = 1, part = c("all", "start", "end", "sequence", "length"), week_start = 1, include_current = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{n}{
%%     ~~Describe \code{n} here~~
}
  \item{part}{
%%     ~~Describe \code{part} here~~
}
  \item{week_start}{
%%     ~~Describe \code{week_start} here~~
}
  \item{include_current}{
%%     ~~Describe \code{include_current} here~~
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
function (x = Sys.Date(), n = 1, part = c("all", "start", "end", 
    "sequence", "length"), week_start = 1, include_current = F) 
{
    if (!"Date" \%in\% class(x)) {
        x <- as.Date(x)
    }
    start <- floor_date(x, unit = "week", week_start) + weeks(ifelse(isTRUE(include_current), 
        0, 1))
    stop <- ceiling_date(x, unit = "week", week_start) + days(7 * 
        n)
    sequence <- seq.Date(from = start, to = stop, by = "day")
    pular <- ifelse(n > 1, "s", "")
    nname <- paste0("week", pular)
    out <- list(start = start, end = stop, sequence = sequence, 
        length = length(sequence), values = paste(n, nname, "in advance from", 
            x))
    class(out) <- "tpr"
    part <- match.arg(part)
    if (part \%in\% c("start", "end", "sequence", "length")) {
        return(out[[part]])
    }
    else {
        return(out)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
