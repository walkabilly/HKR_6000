* Encoding: UTF-8.

FREQUENCIES VARIABLES=group
  /NTILES=4
  /STATISTICS=VARIANCE MEAN MEDIAN SKEWNESS SESKEW KURTOSIS SEKURT
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

EXAMINE VARIABLES=stress BY group
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

*** To do the planned contrasts you need to ONEWAY

**********
*** Analyze -> Compare Means -> One-Way ANOVA
**********

ONEWAY stress BY group
  /POLYNOMIAL=1
  /CONTRAST=-2 1 1
  /CONTRAST=0 -1 1 
  /STATISTICS DESCRIPTIVES EFFECTS HOMOGENEITY 
  /PLOT MEANS
  /MISSING ANALYSIS
  /POSTHOC=TUKEY QREGW GH DUNNETT ALPHA(0.05).

*** This is almost the same analysis but using UNIANOVA
*** Just can't do the planned contrasts

**********
*** General Linear Modeal -> Univariate
**********

UNIANOVA stress BY group
  /CONTRAST(group)=Polynomial
  /METHOD=SSTYPE(3)
  /INTERCEPT=EXCLUDE
  /POSTHOC=group(TUKEY QREGW GH DUNNETT(1)) 
  /PRINT ETASQ DESCRIPTIVE PARAMETER HOMOGENEITY
  /PLOT=SPREADLEVEL RESIDUALS
  /CRITERIA=ALPHA(.05)
  /DESIGN=group.


