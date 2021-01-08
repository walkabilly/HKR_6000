---
title: "sa1_sps_example"
author: "Daniel Fuller"
date: "12/02/2020"
output:
      html_document:
        keep_md: true
---

## Reading in the data

```{}
PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/dfuller/Dropbox/Teaching/MUN/HKR "+
    "6000/HKR_6000_git/assignments/assignment1/simulated_data_explore.csv"
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
```

## 1. Identify the variable types for each variable in the dataset

Switch to **Variable View** in SPSS and you can edit the variable types. 

1. id
    * Definition - Unique identifier for each participant
    * Type - qualitative, nominal
2. age_years
    * Age of the participants in years
    * Type - quantitative, discrete
3. **continue write up for the rest of the variables**

## 2. Calculate the BMI for each participant

```{}
DATASET ACTIVATE DataSet1.
COMPUTE bmi=weight_kg/(height_cm/100)**2.
EXECUTE.
```

## 3. Calculate a young and old variable as per data dictionary

```{}
RECODE age_years (0 thru 39=1) (40 thru Highest=0) INTO age_category.
VARIABLE LABELS  age_category 'age_category'.
EXECUTE.
```

## 4. Calculate the mean and standard deviation
    * For the variables were it is appropriate
    * Including the new variables you have created

```{}
DESCRIPTIVES VARIABLES=age_years
  /STATISTICS=MEAN STDDEV MIN MAX.
```

The mean age of the sampe is 51.52 this suggests that the sample may be slightly older than we would expect based on the Canadian Census the average age in Newfoundland and Labrador is 44.8 years old ([https://www150.statcan.gc.ca/n1/pub/71-607-x/71-607-x2020018-eng.htm](https://www150.statcan.gc.ca/n1/pub/71-607-x/71-607-x2020018-eng.htm)).

5. Calculate the frequencies 
    For the variables were it is appropriate to do so
    
```{}
FREQUENCIES VARIABLES=age_category 
  /ORDER=ANALYSIS.
```

## 6. Draw the histogram
    * Discuss the normality of the data 

## Histogram for age

```{}
GRAPH
  /HISTOGRAM=age_years.
```

Age appears to be mostly a uniform distribution with nearly an equal number of people across age categories in the sample. 

**continue write up for the rest of the variables**

7. Are there missing data? 
```{}
DESCRIPTIVES VARIABLES=age_years
  /STATISTICS=MEAN STDDEV MIN MAX.
```

The output of the count of missing data is 0. There are no missing data for age in the dataset. We have the same number of valid N as are used to calculated the descriptive statistics. 

**continue write up for the rest of the variables**

8. Are there outliers? 

```{}
DESCRIPTIVES VARIABLES=age_years
  /STATISTICS=MEAN STDDEV MIN MAX.
```

Examining the output of the summary statistics shows that the minimum value is 18.01 and the maximum value is 84.99. Both of these values are plausible. The histogram also shows no evidence of outliers in the dataset. 

**continue write up for the rest of the variables**



