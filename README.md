**timeperiodsR** - Упрощённое создание временных периодов, и извлечение их элементов в R <a href='https://selesnow.github.io/timeperiodsR/'><img src='https://raw.githubusercontent.com/selesnow/timeperiodsR/master/inst/timeperiodsR_logo.png' align="right" height="139" /></a>

# Цель пакета timeperiodsR
Зачастую при создании скриптов которые в последвии будут запускаться по рассписанию нам необходимо определить период. Как правило таким периодом может быть прошлая неделя, прошлый месяц или какое то количество прошлых дней. Пакет `timeperiodsR` предоставляет вам набор функций которые автоматически будут вычислять такой период относительно какой либо базовой даты.

Также вы сможете легко образаться к множеству компонентов выбранного периода:
* Получить первую и последнюю дату
* Получить вектор из дат водящих в период
* Получить вектор из будних дней
* Получить вектор выходных дней
* Получить вектор официальных праздников и рабочих дней для России, Украины, Белоруссии и Казахстана
* Задавать пользовательский список выходных дней

# Видео уроки по работе с timeperiodsR
Что бы вам было проще разобраться с функционалом пакета я записал серию видео уроков и создал [плейлист](https://www.youtube.com/playlist?list=PLD2LDq8edf4qed2KVKfXmKdh0OQcdj9gw) на YouTube.

1. [Как получить начальную и конечную дату прошлого месяца на языке R](https://youtu.be/NgfWELbM6Fk)
2. [Как получить вектор будних и выходных дней](https://youtu.be/jwJA-fgQwoQ)
3. [Получить официальные выходные и рабочие дни в странах СНГ](https://youtu.be/meYb5LRV3k8)
4. [Расширения класса tpr с помощью переменных среды](https://youtu.be/W-rUYf3AHqA)
5. [Пользовательский список выходных дней в R](https://youtu.be/c_WQmN6yBl0)
6. [Проверка наличия данных в БД за определённый период](https://youtu.be/UMQ_S5w-T9c)

# Виньетка
Наиболее подробное описание по работе с пакетом `timeperiodsR` вы можете найти в виньетке, `vignette("tpr_intro", package = "timeperiodsR")`

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

## Основные компоненты получаемых объектов
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

# Операторы
В `timeperiodsR` есть несколько операторов.

* %.in% - проверяет вхождение одного вектора дат, или объекта класса tpr в другой, и возвращает логический вектор.
* %left_out% - сравнивает два объекта класса tpr, и возвращает значение из левого, которые отсутвуют в правом.
* %left_in% - сравнивает два объекта класса tpr, и возвращает даты из левого объекта которые входят в парвый.
* %right_out% - сравнивает два объекта класса tpr, и возвращает значение из правого, которые отсутвуют в левом.
* %right_in% - сравнивает два объекта класса tpr, и возвращает даты из правого объекта которые присутвуют в левом.

### Ссылки
1. [Полная, официальная документация по работе с пакетом timeperiodsR](https://selesnow.github.io/timeperiodsR/).
2. [Видео уроки](https://www.youtube.com/playlist?list=PLD2LDq8edf4qed2KVKfXmKdh0OQcdj9gw)
3. Баг репорты, предложения по доработке и улучшению функционала timeperiodsR оставлять [тут](https://github.com/selesnow/timeperiodsR/issues). 
4. [Список релизов](https://github.com/selesnow/timeperiodsR/releases).
5. [Телеграмм канал R4marketing](https://t.me/R4marketing).

### Автор пакета
Алексей Селезнёв, Head of analytics dept. at [Netpeak](https://netpeak.net/en/gb/)
<Br>email: selesnow@gmail.com
<Br>skype: selesnow
<Br>facebook: [facebook.com/selesnow](https://www.facebook.com/selesnow)
<Br>blog: [alexeyseleznev.wordpress.com](https://alexeyseleznev.wordpress.com/)

### Бейджи
[![Rdoc](http://www.rdocumentation.org/badges/version/timeperiodsR)](https://www.rdocumentation.org/packages/timeperiodsR)
[![rpackages.io rank](http://www.rpackages.io/badge/timeperiodsR.svg)](http://www.rpackages.io/package/timeperiodsR)
[![](https://cranlogs.r-pkg.org/badges/timeperiodsR)](https://cran.r-project.org/package=timeperiodsR)
