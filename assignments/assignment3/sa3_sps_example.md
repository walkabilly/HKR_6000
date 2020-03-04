---
title: "sa3_sps_example"
author: "Daniel Fuller"
date: "04/03/2020"
output:
      html_document:
        keep_md: true
---

### Get the spider data independent sample data

```{}
GET
  FILE='/Users/dfuller/Dropbox/Teaching/MUN/HKR 6000/2020 Winter/Data/SpiderBG.SAV'.
DATASET NAME DataSet2 WINDOW=FRONT.
```

## Simple sample t-test

#### Is the anxiety of this group different from a group of people who are extremely scare of spiders? 

```{}
MEANS TABLES=anxiety 
  /CELLS=MEAN COUNT STDDEV SEMEAN.
```

```{}
GRAPH
  /HISTOGRAM(NORMAL)=anxiety.
```

```{}
T-TEST
  /TESTVAL=90
  /MISSING=ANALYSIS
  /VARIABLES=anxiety
  /CRITERIA=CI(.95).
```

### Descriptive statistics by group

```{}
MEANS TABLES=anxiety BY group
  /CELLS=MEAN COUNT STDDEV SEMEAN.
```

### Histogram by group including normal disribution plot

```{}
GRAPH
  /HISTOGRAM(NORMAL)=anxiety
  /PANEL ROWVAR=group ROWOP=CROSS.
```

## Box plot by group

```{}
EXAMINE VARIABLES=anxiety BY group
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
```

### Independent t-test

```{}
T-TEST GROUPS=group(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=anxiety
  /CRITERIA=CI(.95).
```

### Get the spider data dependent sample data

```{}
GET
  FILE='/Users/dfuller/Dropbox/Teaching/MUN/HKR 6000/2020 Winter/Data/SpiderRM.SAV'.
DATASET NAME DataSet2 WINDOW=FRONT.
```

```{}
MEANS TABLES=picture real
  /CELLS=MEAN COUNT STDDEV SEMEAN.
```

```{}
GRAPH
  /HISTOGRAM(NORMAL)=picture.
```

```{}
GRAPH
  /HISTOGRAM(NORMAL)=real.
```

### Unadjusted boxplot

```{}
EXAMINE VARIABLES=picture real 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.
```

### Adjust data 

```{}
COMPUTE p_mean=(picture +  real) / 2.
COMPUTE grand_mean=43.5.
COMPUTE adj=grand_mean - p_mean.
COMPUTE picture_adj=picture + adj.
COMPUTE real_adj=real + adj.
EXECUTE.
```

### Adjusted boxplot

```{}
EXAMINE VARIABLES=picture_adj real_adj 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.
```

```{}
GRAPH
  /SCATTERPLOT(BIVAR)=real WITH picture
  /MISSING=LISTWISE.
```

```{}
T-TEST PAIRS=picture WITH real (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.
```

