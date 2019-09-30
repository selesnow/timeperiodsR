**timeperiodsR** - Упрощённое создание временных периодов, и извлечение их элементов в R <a href='https:/selesnow.github.io/timeperiodsR'><img src='https://raw.githubusercontent.com/selesnow/timeperiodsR/master/inst/timeperiodsR_logo.png' align="right" height="139" /></a>

# Цель пакета timeperiodsR
Зачастую при создании скриптов которые в последвии будут запускаться по рассписанию нам необходимо определить период, как правило таким периодом может быть прошлая неделя, прошлый месяц, какое то количество прошлых дней. Пакет `timeperiodsR` предоставляет вам набор функций которые автоматически будут вычислять такой период от какой либо базовой даты.

# Функции пакета timeperiodsR
Текущая версия пакета состоит из 24 функций, по названию каждой из функций можно определить какой временной интервал она возвращает.
Название состоит из префикса `last` / `previous` / `this` / `next` и временной единицы `day` / `week` / `month` / `quarter` / `year`. Нижнее подчёркивание `_` является разделителем слов в названиях функций. 

## Список функций
* `last_n_days()`
* `last_n_weeks()`
* `last_n_months()`
* `last_n_quarters()`
* `last_n_years()`
* `previous_week()`
* `previous_month()`
* `previous_quarter()`
* `previous_year()`
* `this_week()`
* `this_month()`
* `this_quarter()`
* `this_year()`
* `next_week()`
* `next_month()`
* `next_quarter()`
* `next_year()`
* `next_n_days()`
* `next_n_weeks()`
* `next_n_months()`
* `next_n_quarters()`
* `next_n_years()`
* `custom_period()`

## Компоненты получаемых объектов
Любая из функций пакета возвращает объект класса `tpr` состоящий из следующих компонентов:
* start - начальную дату;
* end - конечную дату;
* sequence - последовательность дат;
* length - количество дней входящих в период;

## Аргументы
В функциях пакета timeperiodsR присутвуют следующие аргументы:
* *x* - Объект даты, от которой будет вычисляться интервал, по умолчанию это текущий день;
* *n* - Количество временных интервалов на которое необходимо сместится от даты указанной в аргументе *x*;
* *part* - Какую часть объекта вам необходимо получить:
    * "all" - объект со всеми доступными компонентами;
    * "start" - начальную дату;
    * "end" - конечную дату;
    * "sequence" - последовательность дат;
    * "length" - количество дней входящих в период;
* *week_start* - Какой день будет являться началом недели: 1 - понедельник, 7 - воскресенье;
* *include_current* - Включать ли в период текущий временной объект, TRUE или FALSE.

## Методы
Пакет `timeperiodsR` имеет несколько методов, позволяющих вам извлекать некоторые элементы объектов класса *tpr*.

* `seq` - получить последовательность дат из объекта класса *tpr*;
* `length` - получить длительность объекта класса *tpr* в днях;
* `start` - получить первую дату из объекта класса *tpr*;
* `end` - получить последнюю дату из объекта класса *tpr*;
* `print` - вывести в консоль информацию о периоде содержащемся в объекте класса *tpr*.

## Пример кода
```
library(timeperiodsR)

# получить период равный двум предыдущим неделям
last2weeks <- last_n_weeks(n = 2)

# начальная дата
last2weeks$start
## или
start(last2weeks)

# конечная дата
last2weeks$end
## или
end(last2weeks)

# последовательность дат
last2weeks$sequence
## или
seq(last2weeks)

# количество дней вошедших в период
last2weeks$length
## или
length(last2weeks)
```

## Виньетки
Наиболее подробное описание по работе с пакетом `timeperiodsR` вы можете найти в виньетке, `vignette("tpr_intro", package = "timeperiodsR")`

### Ссылки
1. [Полная, официальная документация по работе с пакетом timeperiodsR](https://selesnow.github.io/timeperiodsR/).
2. Баг репорты, предложения по доработке и улучшению функционала timeperiodsR оставлять [тут](https://github.com/selesnow/timeperiodsR/issues). 
3. [Список релизов](https://github.com/selesnow/timeperiodsR/releases).
4. [Телеграмм канал R4marketing](https://t.me/R4marketing).
5. [Группа в Вконтакте](https://vk.com/data_club).

### Автор пакета
Алексей Селезнёв, Head of analytics dept. at [Netpeak](https://netpeak.net)
<Br>email: selesnow@gmail.com
<Br>skype: selesnow
<Br>facebook: [facebook.com/selesnow](https://facebook.com/selesnow)
<Br>blog: [alexeyseleznev.wordpress.com](https://alexeyseleznev.wordpress.com/)

### Бейджи
[![Rdoc](http://www.rdocumentation.org/badges/version/timeperiodsR)](http://www.rdocumentation.org/packages/timeperiodsR)
[![Rdoc](http://www.rdocumentation.org/badges/version/timeperiodsR)](http://www.rdocumentation.org/packages/timeperiodsR)
[![rpackages.io rank](http://www.rpackages.io/badge/timeperiodsR.svg)](http://www.rpackages.io/package/timeperiodsR)
[![](https://cranlogs.r-pkg.org/badges/timeperiodsR)](https://cran.r-project.org/package=timeperiodsR)
