## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  eval=TRUE,
  collapse = TRUE,
  comment = "#>"
)

## ---- echo=TRUE, eval=TRUE----------------------------------------------------
library(timeperiodsR)

# получаем прошлый месяц
period <- previous_month()

# получаем начальную и конечную дату прошлого месяца
start <- period$start # первый день прошлого месяца
end   <- period$end   # последний день прошлого месяца

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("httr")

## ----eval=TRUE----------------------------------------------------------------
options("timeperiodsR.official_day_offs" = TRUE,
        "timeperiodsR.official_day_offs_country" = "ua",
        "timeperiodsR.official_day_offs_pre" = 1)

## ---- echo=TRUE, eval=TRUE----------------------------------------------------
last2weeks <- last_n_weeks(n = 2)

