<head>
<link rel="shortcut icon" type="image/x-icon" href="as.ico">
    
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-58RGS9P');</script>
<!-- End Google Tag Manager -->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-114798296-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-114798296-1');
</script>


</head>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-58RGS9P"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<p align="center">
<a href="https://selesnow.github.io/"><img src="https://alexeyseleznev.files.wordpress.com/2017/03/as.png" height="80"></a>
</p>
<style type="text/css">

ul.nm_ul {
  list-style: none; /*убираем маркеры списка*/
  margin: 0; /*убираем отступы*/
  padding-left: 0; /*убираем отступы*/
  margin-top:25px; /*делаем отступ сверху*/
  background:#DCDCDC; /*добавляем фон всему меню*/
  height: 30px; /*задаем высоту*/
}
a.nm_a {
  text-decoration: none; /*убираем подчеркивание текста ссылок*/
  background:#696969; /*добавляем фон к пункту меню*/
  color:#fff; /*меняем цвет ссылок*/
  padding:0px 7px; /*добавляем отступ*/
  font-family: arial; /*меняем шрифт*/
  line-height:30px; /*ровняем меню по вертикали*/
  display: block; 
  border-right: 1px solid #677B27; /*добавляем бордюр справа*/
  -moz-transition: all 0.3s 0.01s ease; /*делаем плавный переход*/
  -o-transition: all 0.3s 0.01s ease;
  -webkit-transition: all 0.3s 0.01s ease;
}
a.nm_a:hover {
  background:#FF8C00;/*добавляем эффект при наведении*/
}
li.nm_li {
  float:left; /*Размещаем список горизонтально для реализации меню*/
  position:relative; /*задаем позицию для позиционирования*/
}
     
    /*Стили для скрытого выпадающего меню*/
    li.nm_li > ul.nm_ul {
        position:absolute;
        top:5px;
        display:none;   
    }
     
    /*Делаем скрытую часть видимой*/
    li.nm_li:hover > ul.nm_ul {
        display:block; 
        width:280px;  /*Задаем ширину выпадающего меню*/      
    }
   li.nm_li:hover > ul.nm_ul > li.nm_li {
        float:none; /*Убираем горизонтальное позиционирование*/
    }
</style>

<h2>Menu:</h2>
<center>
<ul class="nm_ul">
    <li class="nm_li"><a href="/" class="nm_a">Main</a></li>
    <li class="nm_li"><a href="/" class="nm_a">R Packages</a>
        <ul class="nm_ul">
            <li class="nm_li"><a href="/galigor" class="nm_a">galigor</a></li>
            <li class="nm_li"><a href="/ryandexdirect" class="nm_a">ryandexdirect</a></li>
            <li class="nm_li"><a href="/rym" class="nm_a">rym</a></li>
            <li class="nm_li"><a href="/rfacebookstat" class="nm_a">rfacebookstat</a></li>
            <li class="nm_li"><a href="/rvkstat" class="nm_a">rvkstat</a></li>
	          <li class="nm_li"><a href="/rmytarget" class="nm_a">rmytarget</a></li>
            <li class="nm_li"><a href="/timeperiodsR" class="nm_a">timeperiodsR</a></li>
	          <li class="nm_li"><a href="/rmixpanel" class="nm_a">rmixpanel</a></li>
	          <li class="nm_li"><a href="/rGitHub" class="nm_a">rGitHub</a></li>
	          <li class="nm_li"><a href="/getProxy" class="nm_a">getProxy</a></li>
        </ul>
    </li>
	<li class="nm_li"><a href="#" class="nm_a">Онлайн Книги</a>
	    <ul class="nm_ul">
            <li class="nm_li"><a href="https://r-for-marketing.netpeak.net/" class="nm_a">Язык R в Интернет Маркетинге</a></li>
            <li class="nm_li"><a href="https://netpeak.net/files/whitepapers/10-fishek-web-analitiki.pdf" class="nm_a">10 фишек Google Analytics</a></li>
        </ul>
	</li>
	<li class="nm_li"><a href="#" class="nm_a">Онлайн Курсы</a>
	    <ul class="nm_ul">
            <li class="nm_li"><a href="https://learn.needfordata.ru/r" class="nm_a">Язык R в Интернет Маркетинге</a></li>
        </ul>
    </li>
    <li class="nm_li"><a href="/library" class="nm_a">Статьи</a></li>
    <li class="nm_li"><a href="https://alexeyseleznev.wordpress.com/" class="nm_a">Блог</a></li>
    <li class="nm_li"><a href="/news" class="nm_a">Новости</a></li>
    <li class="nm_li"><a href="/publications" class="nm_a">Архив</a></li>
</ul>
</center>
<Br>

timeperiodsR - Упрощённое создание временных периодов, и извлечение их элементов в R <a href='https:/selesnow.github.io/timeperiodsR'><img src='https://raw.githubusercontent.com/selesnow/timeperiodsR/master/inst/timeperiodsR_logo.png' align="right" height="139" /></a>

# Цель пакета timeperiodsR
Зачастую при создании скриптов которые в последвии будут запускаться по рассписанию нам необходимо определить период, как правило таким периодом может быть прошлая неделя, прошлый месяц, какое то количество прошлых дней. Пакет `timeperiodsR` предоставляет вам набор функций которые автоматически будут вычислять такой период от какой либо базовой даты.

# Поддержать проект
Вы можете поддержать проект любой произвольной суммой воспользовавшись кнопкой или перейдя по этой [ссылке](https://secure.wayforpay.com/button/b6dd4a7083fe0).

<script type="text/javascript" id="widget-wfp-script" src="https://secure.wayforpay.com/server/pay-widget.js?ref=button"></script>
<script type="text/javascript">function runWfpWdgt(url){var wayforpay=new Wayforpay();wayforpay.invoice(url);}</script>
<button type="button" onclick="runWfpWdgt('https://secure.wayforpay.com/button/b6dd4a7083fe0');" style="display:inline-block!important;background:#2B3160 url('https://s3.eu-central-1.amazonaws.com/w4p-merch/button/bg1x2.png') no-repeat center right;background-size:cover;width: 256px!important;height:54px!important;border:none!important;border-radius:14px!important;padding:18px!important;box-shadow:3px 2px 8px rgba(71,66,66,0.22)!important;text-align:left!important;box-sizing:border-box!important;" onmouseover="this.style.opacity='0.8';" onmouseout="this.style.opacity='1';"><span style="font-family:Verdana,Arial,sans-serif!important;font-weight:bold!important;font-size:14px!important;color:#ffffff!important;line-height:!important;vertical-align:middle!important;">Оплатить</span></button>

# Установка
На данный момент установка пакета возможна только из текущего репозитория на GitHub.

```r
# install.packages("devtools")
devtools::install_github("selesnow/timeperiodsR")
```

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
Наиболее подробное описание по работе с пакетом `timeperiodsR` вы можете найти в [виньетке](https://selesnow.github.io/timeperiodsR/inst/doc/tpr_intro.html), `vignette("tpr_intro", package = "timeperiodsR")`

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
[![rpackages.io rank](http://www.rpackages.io/badge/timeperiodsR.svg)](http://www.rpackages.io/package/timeperiodsR)
[![](https://cranlogs.r-pkg.org/badges/timeperiodsR)](https://cran.r-project.org/package=timeperiodsR)
