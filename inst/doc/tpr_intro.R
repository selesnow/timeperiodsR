## ---- echo=TRUE---------------------------------------------------------------
library(timeperiodsR)

# получаем прошлый месяц
period <- previous_month()

# получаем начальную и конечную дату прошлого месяца
start <- period$start # первый день прошлого месяца
end   <- period$end   # последний день прошлого месяца

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("httr")

## ----eval=FALSE---------------------------------------------------------------
#  options("timeperiodsR.official_day_offs" = TRUE,
#          "timeperiodsR.official_day_offs_country" = "ua",
#          "timeperiodsR.official_day_offs_pre" = 1)

## ---- echo=TRUE---------------------------------------------------------------
last2weeks <- last_n_weeks(n = 2)

## ---- echo=TRUE---------------------------------------------------------------
# начальная дата
last2weeks$start
## или
start(last2weeks)

# конечная дата
last2weeks$end
## или
end(last2weeks)

# первый рабочий день
last2weeks$first_workday
## или
first_workday(last2weeks)

# последний рабочий день
last2weeks$last_workday
## или
last_workday(last2weeks)

# первый выходной день
last2weeks$first_weekend
## или
first_weekend(last2weeks)

# последний выходной день  
last2weeks$last_weekend
## или
last_weekend(last2weeks)

# последовательность дат
last2weeks$sequence
## или
seq(last2weeks)

# последовательность будних дней
last2weeks$workdays
## или
workdays(last2weeks)

# последовательность выходных дней
last2weeks$weekends
# или
weekends(last2weeks)

# количество дней вошедших в период
last2weeks$length
## или
length(last2weeks)

# количество будних дней в периоде
last2weeks$workdays_length
## или
workdays_length(last2weeks)
  
# количество выходных дней в периоде
last2weeks$weekends_length
## или
weekends_length(last2weeks)

## ---- echo=TRUE---------------------------------------------------------------
library(timeperiodsR)

last2weeks <- last_n_weeks(x = "2019-09-26", n = 2, week_start = 7)

## ---- echo=TRUE---------------------------------------------------------------
previous2weeks <- previous_week(x = "2019-09-26", n = 2)

## ---- echo=TRUE---------------------------------------------------------------
this_month()

## ---- echo=TRUE---------------------------------------------------------------

nextweek_from_12sep <- next_week("2019-09-12")

nextweek_from_today <- next_week()

## ---- echo=TRUE---------------------------------------------------------------
# получить 5 следующих дней не включая текущую дату
next5days <- next_n_days(n = 5)

# получить 5 следующих дней включая текущую дату
next5days_wt <- next_n_days(n = 5, include_current = T)

## ---- echo=TRUE---------------------------------------------------------------
period1 <- custom_period("2019-09-03", "2019-09-11")

## ---- echo=TRUE---------------------------------------------------------------
period1 <- this_month("2019-11-07")
period2 <- previous_week("2019-11-07")

print(period1)
print(period2)

## ---- echo=TRUE---------------------------------------------------------------
period1 %left_in% period2   # получить даты из period1 которые входят в period2
period1 %left_out% period2  # получить даты из period1 которые не входят в period2
period1 %right_in% period2  # получить даты из period2 которые входят в period1
period1 %right_out% period2 # получить даты из period2 которые не входят в period2

## ---- echo=TRUE---------------------------------------------------------------
dates <- c("2019-09-11", "2019-09-02", "2019-10-11", "2019-08-30")
dates_tpr <- as_timeperiod(dates)
dates_tpr

