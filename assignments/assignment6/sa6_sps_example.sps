* Encoding: UTF-8.

*** Descriptives

FREQUENCIES VARIABLES=verylow low medium high
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV VARIANCE MEAN MEDIAN SKEWNESS SESKEW KURTOSIS SEKURT
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

*** Unadjusted boxplot

EXAMINE VARIABLES=verylow low medium high BY group
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

*** Computing adjustment for new boxplot

COMPUTE p_mean=(verylow +  low + medium + high) / 4.
COMPUTE grand_mean=13.41.
COMPUTE adj=grand_mean - p_mean.
COMPUTE verylow_adj=verylow + adj.
COMPUTE low_adj=low + adj.
COMPUTE medium_adj=medium + adj.
COMPUTE high_adj=high + adj.
EXECUTE.

*** Adjusted boxplot

EXAMINE VARIABLES=verylow_adj low_adj medium_adj high_adj BY group
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

*** Repeated meausres Anova
*** Do this on the unadjusted data 

GLM verylow low medium high BY group
  /WSFACTOR=iron_dose 4 Repeated 
  /CONTRAST(group)=Repeated
  /METHOD=SSTYPE(3)
  /POSTHOC=group(TUKEY BONFERRONI GH) 
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /PLOT= RESIDUALS 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=iron_dose 
  /DESIGN=group.
