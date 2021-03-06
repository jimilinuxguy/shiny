<style>

/* slide titles */
.reveal h3 { 
  font-size: 100px;
  color: red;
}

/* heading for slides with two hashes ## */
.reveal .slides section .slideContent h2 {
   font-size: 40px;
   font-weight: bold;
   color: green;
}

/* ordered and unordered list styles */
.reveal ul, 
.reveal ol {
    font-size: 50px;
    color: red;
    list-style-type: square;
}

</style>
Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Jimi Sanchez
date: Tuesday December 20 2016
autosize: true

Overview
========================================================

The app developed for the first part of the assignment demo is avalilable at: https://jimisanchez.shinyapps.io/shinyproject/

Source code for ui.R and server.R files are available on the GitHub repo: https://github.com/jimilinuxguy/shiny

Tabular zipcode data
========================================================


```
     City              State             Zipcode               Rank      
 Length:31713       Length:31713       Length:31713       Min.   :    1  
 Class :character   Class :character   Class :character   1st Qu.: 5988  
 Mode  :character   Mode  :character   Mode  :character   Median :11974  
                                                          Mean   :11974  
                                                          3rd Qu.:17961  
                                                          Max.   :23948  
                                                          NA's   :7765   
     Score              Superzip         Population       College       
 Min.   :  0.00007   Min.   :0.00000   Min.   :    3   Min.   :  0.000  
 1st Qu.: 12.58722   1st Qu.:0.00000   1st Qu.:  515   1st Qu.:  9.241  
 Median : 29.86740   Median :0.00000   Median : 1810   Median : 14.065  
 Mean   : 36.21083   Mean   :0.02781   Mean   : 5744   Mean   : 18.065  
 3rd Qu.: 55.59801   3rd Qu.:0.00000   3rd Qu.: 7651   3rd Qu.: 22.389  
 Max.   : 99.99999   Max.   :1.00000   Max.   :86540   Max.   :100.000  
                                                                        
     Income             Lat             Long        
 Min.   :  3.268   Min.   :19.05   Min.   :-176.80  
 1st Qu.: 46.148   1st Qu.:35.48   1st Qu.: -97.20  
 Median : 55.233   Median :39.51   Median : -88.39  
 Mean   : 60.387   Mean   :38.93   Mean   : -91.14  
 3rd Qu.: 68.552   3rd Qu.:42.14   3rd Qu.: -80.47  
 Max.   :261.521   Max.   :70.49   Max.   : -67.03  
                                                    
```

Historgram Plot of Score
========================================================

![plot of chunk unnamed-chunk-2](presentation-figure/unnamed-chunk-2-1.png)

Historgram Plot of Adult Population
========================================================

![plot of chunk unnamed-chunk-3](presentation-figure/unnamed-chunk-3-1.png)
