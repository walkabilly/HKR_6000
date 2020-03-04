---
title: "sa2_sps_example"
author: "Daniel Fuller"
date: "12/02/2020"
output:
      html_document:
        keep_md: true
---

* Encoding: UTF-8.

```{}
DATASET ACTIVATE DataSet1.
```

#### Descriptive Statistics for Depression variable
### Using Analyze -> Explore because I can get the K-S test and boxplot

```{}
EXAMINE VARIABLES=depressionT1
  /PLOT BOXPLOT HISTOGRAM NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.
```

### Descriptive statistics for income variable

```{}
FREQUENCIES VARIABLES=income1
  /ORDER=ANALYSIS.
```

### Histogram for depression
```{}
GRAPH
  /HISTOGRAM(NORMAL)=depressionT1.
```
## Bar graph for income
```{}
GRAPH
  /BAR(SIMPLE)=COUNT BY income1.
```

### Correlation between income and depression

#### Step 1 Scatter Plot
```{}
GRAPH
  /SCATTERPLOT(BIVAR)=income1 WITH depressionT1
  /MISSING=LISTWISE.
```
#### Step 2 Correlation. 
Using Spearman because I have one ordinal variable and one continuous variable

```{}
NONPAR CORR
  /VARIABLES=income1 depressionT1
  /PRINT=SPEARMAN TWOTAIL NOSIG
  /MISSING=PAIRWISE.
```
