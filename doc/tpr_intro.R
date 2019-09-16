## ------------------------------------------------------------------------
library(timeperiodsR)

last2weeks <- last_n_weeks(n = 2)

## ---- echo=TRUE----------------------------------------------------------
# начальная дата
last2weeks$start

# конечная дата
last2weeks$end

# последовательность дат
last2weeks$sequence
# или
seq(last2weeks)

# количество дней вошедших в период
last2weeks$length
# или
length(last2weeks)

## ---- echo=TRUE----------------------------------------------------------
library(timeperiodsR)

last2weeks <- last_n_weeks(x = "2019-09-26", n = 2, week_start = 7)

## ---- echo=TRUE----------------------------------------------------------
previous2weeks <- previous_week(x = "2019-09-26", n = 2)

## ------------------------------------------------------------------------
this_month()

