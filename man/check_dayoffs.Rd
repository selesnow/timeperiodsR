\name{check_dayoffs}
\alias{check_dayoffs}
\title{
Check if the day is an official day off
}
\description{
Check any date or date vector for is an official day off or not.
}
\usage{
check_dayoffs(date  = NULL,
              year  = NULL,
              month = NULL,
              day   = NULL,
              cc    = getOption("timeperiodsR.official_day_offs_country"),
              pre   = getOption("timeperiodsR.official_day_offs_pre"),
              include_custom_day_offs = TRUE)
}
\arguments{
  \item{year}{Year for check}
  \item{month}{Month for check}
  \item{day}{Month for check.}
  \item{date}{Date, or date vector for checking}
  \item{cc}{Country, one of ru, ua, kz, by}
  \item{pre}{Including shorter working days, 0 or 1}
  \item{include_custom_day_offs}{Including custom dayoffs from options or global variables}
}
\details{
Function use 'isDayOff() API'.

For get official day offs for your country you must install httr package and switch options \code{timeperiodsR.official_day_offs} to TRUE  or set system variable \code{TPR_DAY_OFFS=TRUE}.

Now allow next country:
\describe{
  \item{ru}{Russia}
  \item{ua}{Ukraine}
  \item{kz}{Kazakhstan}
  \item{by}{Belarus}
}

Also you can set default country by options or systen envarible:
\describe{
  \item{option}{timeperiodsR.official_day_offs_country}
  \item{system variable}{TPR_COUNTRY}
}

And you can include or exclude shorter working days. Using option \code{timeperiodsR.official_day_offs_pre}:
\describe{
  \item{0}{Exclude shorter work days}
  \item{1}{Include shorter work days}
}

Day marks:
\describe{
  \item{0}{Workday}
  \item{1}{Day off}
  \item{2}{Shorten day off}
  \item{3}{Custom day off}
}

You can set your custom day offs, for example it can be your vacation. Using option \code{timeperiodsR.custom_day_offs} or system variable \code{TPR_CUSTOM_DAY_OFFS}. In \code{TPR_CUSTOM_DAY_OFFS} you can set custom day offs like comma or semicolon list of dates in format \code{YYYY-MM-DD}.
}
\value{Named vector with date and marks}
\author{
Alexey Seleznev
}

\references{
\href{https://isdayoff.ru/}{Official documentation for isDayOff API}
}

\examples{
ld <- next_n_weeks(n = 2)
check_dayoffs(date = ld)
}
