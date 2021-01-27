* Encoding: UTF-8.

**** Reading in the data

* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/dfuller/Dropbox/Teaching/MUN/HKR 6000/HKR_6000_git/data/simulated_data_missing.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  id AUTO
  age_years AUTO
  bench_press_max_lbs AUTO
  height_cm AUTO
  weight_kg AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


** 1. Identify the variable types for each variable in the dataset


** 2. For __each variable separately__ answer and conduct the analysis for the following

**** Examining data for height

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=height_cm id
  /STATISTICS=MEAN STDDEV MIN MAX.

*** The id variable has 10000 records but the height_cm variable has 9972. Suggesting there are some missing data. 

### Are their outliers? 

*** There appear to be outliers based on the summary measure. The max is 511 which is not a plausible value. Need to explore more to see if there are other outliers. 
        
GRAPH
  /HISTOGRAM=height_cm.

*** The histogram sugggests that there are vlaues that are will outside of the distribution. Let's try a box plot. 

EXAMINE VARIABLES=height_cm 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.


*** There appear to two values that are extreme. Over 400am tall. Maybe what happened is that the height was recorded as Feet and Inches instead of centimeters. 
*** Let's sort the for the highest values in the data and see exactly what those highest values are 
*** Here we see that we have two values that are extreme, 411cm and 511 cm. I'm going to assume that these were wrongly entered as feet and inches instead of centimeres. So 4feet 11inches is 4x12 = 48inches + 11 inches = 59 inches. One inch = 2.54 cm so 59x2.54 = 149.86 
*** Let's recode those values. Make sure to create a new variable. You want to be to compare the old and new variables. 

RECODE height_cm (411=149.86) (511=175.26) (ELSE=Copy) INTO height_no_outlier.
VARIABLE LABELS  height_no_outlier 'height_no_outlier'.
EXECUTE.

** Let's compare the boxplots
    
EXAMINE VARIABLES=height_no_outlier 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=height_cm 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.


** Looks like we still have some errors on the low end of the boxplot. Let's see what the low end of the distribution looks like. Same thing as before.
** Ahh. A few things here 
** There is one person coded as 52. Again, let's assume that this is feet and inches and fix it manually. Here we add to our old code to make sure that we are building on our previous work. 
** There are some very small people here. 97.2cm is very short. Is it plausible? Maybe. But lets say we want to remove those people. 

RECODE height_cm (411=149.86) (511=175.26) (52=157.48) (ELSE=Copy) INTO height_no_outlier.
VARIABLE LABELS  height_no_outlier 'height_no_outlier'.
EXECUTE.

**** Removing the two smallest people
**** Here we should go from 10,000 people in the data to 9998 people in the data. Here we need to keep the NA values and keep remove the other values. 



RECODE height_no_outlier (0 thru 100=SYSMIS) (ELSE=Copy) INTO height_no_outlier_no_missing.
VARIABLE LABELS  height_no_outlier_no_missing 'height_no_outlier_no_missing'.
EXECUTE.


*******************
    **************** Watch out!! The variable type has changed
*******************

*** Outliers fixed height data

Let's compare the boxplots one more time. Make sure to use your new dataframe `data_no_outliers`. 

EXAMINE VARIABLES=height_no_outlier 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

EXAMINE VARIABLES=height_cm 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

*** Are their missing data?

Now we can start working from our variable with no outliers

DESCRIPTIVES VARIABLES=id height_no_outlier
  /STATISTICS=MEAN STDDEV MIN MAX.

*** Both our summary and our is.na function tell us there are 28 missing data points in the data. In this sample of 10000 people I would generally just leave those people be missing because it represents a very small portion of the data (0.28% of the data). So let's leave them out and create a new analysis dataset. If we remove the people with missing data for height we would expect our dataset to go from 10,000 observations to 9,972 observations. 

*** Ok. That looks good. Now we have an analysis dataset that is clean for height. We can compare our old and new variables for height. 

### Analysis dataset

DESCRIPTIVES VARIABLES=height_cm height_no_outlier height_no_outlier_no_missing
  /STATISTICS=MEAN STDDEV MIN MAX.

*** In the clean height variable the min and max are different. Our mean and median have changed very slightly. 
*** Let's look at the histograms

GRAPH
  /HISTOGRAM=height_cm.


GRAPH
  /HISTOGRAM=height_no_outlier.


GRAPH
  /HISTOGRAM=height_no_outlier_no_missing.

*** Much better. We now have a clean looking histogram for height. We have delt with outliers and missing data. 



