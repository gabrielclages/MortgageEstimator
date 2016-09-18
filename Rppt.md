<style>
.small-code pre code {
  font-size: 0.5em;
}
</style>
<style>
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}
</style>
<style>
.reveal ul, 
.reveal ol {
    font-size: 0.8em;
    color: black;
    list-style-type: square;
}
</style>


Developing Data Products- Course Project
========================================================
author: Shruti Chandrika Vedurmudi
date: September 12,2016
autosize: false
transition :rotate



Mortgage Price Estimator
========================================================
class: small-code

Mortgage Price Estimator is a Shiny-App for fulfillment of course requirements of the Data Science Specialization on Coursera.The data is taken from [Zillow](http://www.zillow.com/research/data/). A preview of the data can be seen below.


```
  RegionID RegionName SizeRank X2011.01 X2011.02 X2011.03 X2011.04
1        9 California        1      209      208      207      205
2       54      Texas        2       71       71       71       71
3       43   New York        3      134      134      133      133
4       14    Florida        4       86       85       84       83
5       21   Illinois        5      121      120      120      119
  X2011.05 X2011.06 X2011.07 X2011.08 X2011.09 X2011.10 X2011.11 X2011.12
1      204      203      202      200      199      198      198      198
2       70       70       70       70       70       69       69       69
3      133      133      132      132      131      131      130      129
4       83       82       82       82       82       81       81       81
5      118      116      115      114      114      114      113      112
  X2012.01 X2012.02 X2012.03 X2012.04 X2012.05 X2012.06 X2012.07 X2012.08
1      197      196      197      198      199      200      202      203
2       70       70       70       70       70       70       70       70
3      129      129      129      129      129      129      128      128
4       81       80       81       82       83       83       84       84
5      111      110      109      109      109      109      109      109
  X2012.09 X2012.10 X2012.11 X2012.12 X2013.01 X2013.02 X2013.03 X2013.04
1      205      207      210      213      215      218      222      226
2       70       70       70       71       71       71       71       72
3      129      129      129      129      130      130      130      130
4       84       85       86       86       87       88       89       90
5      109      109      109      109      109      109      109      109
  X2013.05 X2013.06 X2013.07 X2013.08 X2013.09 X2013.10 X2013.11 X2013.12
1      231      236      240      244      248      251      253      256
2       72       73       73       73       74       74       74       74
3      130      131      131      131      131      131      131      131
4       90       91       92       93       95       96       97       98
5      110      111      112      112      113      114      114      115
  X2014.01 X2014.02 X2014.03 X2014.04 X2014.05 X2014.06 X2014.07 X2014.08
1      258      260      263      265      267      269      271      273
2       75       76       76       76       77       77       78       78
3      131      131      130      130      130      131      131      131
4       99      100      100      101      101      102      103      104
5      115      115      116      116      116      116      117      117
  X2014.09 X2014.10 X2014.11 X2014.12 X2015.01 X2015.02 X2015.03 X2015.04
1      274      276      277      279      280      281      283      284
2       78       79       79       80       80       81       81       82
3      131      131      131      131      132      132      132      132
4      104      106      106      107      107      108      109      110
5      118      118      118      119      119      119      120      120
  X2015.05 X2015.06 X2015.07 X2015.08 X2015.09 X2015.10 X2015.11 X2015.12
1      286      288      289      291      293      295      297      298
2       82       83       83       84       85       86       86       87
3      132      133      133      133      133      133      133      133
4      110      111      111      112      113      114      116      116
5      121      121      122      122      122      122      122      123
  X2016.01 X2016.02 X2016.03 X2016.04 X2016.05 X2016.06    rowavg
1      299      300      302      303      304      306 245.59091
2       87       88       89       89       89       89  75.96970
3      134      135      135      135      135      135 131.31818
4      117      118      119      120      120      121  96.69697
5      123      123      124      124      125      125 115.78788
```



Mortage Price Estimator Contd....
========================================================
class:reveal-ol

## The app has three pages -:

- Average House Price Estimator
- Monthly Mortgage Calculater
- About or Help Page




![test](Capture.png)

***
<span style ="font-size:1em;">**Average House price Estimator** takes a slider input of the desired square footage and the state to give an average house price in respect to the selections.It also displays an interactive United States of America graph where the shade of the state shows indicates the price per square footage.(higher the cost-darker the shade)</style>


Mortage Price Estimator Contd....
========================================================

The **Monthly Mortgage Calculator** enables you to calculate your monthly mortgage.
  

![test2](Capture2.png)
***
The following inputs are needed for the calculation-:

-House Price  
-Downpayment  
-Annual Percentage Rate  
-Payment Term

Mortage Price Estimator Contd....
=====
The **source data** can be downloaded from the application. The about page can be refrenced to navigate through the application.

To learn more about Developing Shiny Apps visit the page http://shiny.rstudio.com/

You can also enroll into the Data Science Certification Course- [Developing Data Products](https://www.coursera.org/learn/data-products/home/welcome) at Coursera

<div style ="font-size:2em;color:red;text-align:center">Thank You</div>
