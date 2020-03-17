---
title: "sa5_rmarkdown_example"
author: "Daniel Fuller"
date: "06/03/2020"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---



## ANOVA

### Checking the data

Check the data as usual with descriptive statistics and data visualization (*** not shown)


```r
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──
```

```
## ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
## ✔ tibble  2.1.3     ✔ dplyr   0.8.3
## ✔ tidyr   1.0.0     ✔ stringr 1.4.0
## ✔ readr   1.3.1     ✔ forcats 0.4.0
```

```
## ── Conflicts ────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

```r
library(car)
```

```
## Loading required package: carData
```

```
## 
## Attaching package: 'car'
```

```
## The following object is masked from 'package:dplyr':
## 
##     recode
```

```
## The following object is masked from 'package:purrr':
## 
##     some
```

```r
library(pairwiseComparisons)
```

```
## Warning in checkMatrixPackageVersion(): Package version inconsistency detected.
## TMB was built with Matrix version 1.2.18
## Current Matrix version is 1.2.17
## Please re-install 'TMB' from source using install.packages('TMB', type = 'source') or ask CRAN for a binary version of 'TMB' matching CRAN's 'Matrix' package
```

```
## Registered S3 methods overwritten by 'broom.mixed':
##   method         from 
##   augment.lme    broom
##   augment.merMod broom
##   glance.lme     broom
##   glance.merMod  broom
##   glance.stanreg broom
##   tidy.brmsfit   broom
##   tidy.gamlss    broom
##   tidy.lme       broom
##   tidy.merMod    broom
##   tidy.rjags     broom
##   tidy.stanfit   broom
##   tidy.stanreg   broom
```

```r
library(DescTools)
```

```
## 
## Attaching package: 'DescTools'
```

```
## The following object is masked from 'package:car':
## 
##     Recode
```

```r
stress_data <- read_csv("https://raw.githubusercontent.com/walkabilly/HKR_6000/master/assignments/assignment5/anova_data.csv")
```

```
## Parsed with column specification:
## cols(
##   id = col_double(),
##   group = col_character(),
##   stress = col_double()
## )
```

```r
str(stress_data$group)
```

```
##  chr [1:30] "yoga" "yoga" "yoga" "yoga" "yoga" "yoga" "yoga" "yoga" "yoga" ...
```

```r
str(stress_data$stress)
```

```
##  num [1:30] 50 45 48 47 45 49 50 54 57 55 ...
```

### Descriptive statistics


```r
summary(stress_data$stress)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   45.00   50.00   56.00   57.13   64.50   71.00
```

### Changing the level order 


```r
stress_data$group <- fct_relevel(stress_data$group, c("placebo", "guided imagery", "yoga"))
```

### Histogram


```r
stress_histogram <- ggplot(stress_data, aes(stress)) + 
                  geom_histogram()
plot(stress_histogram)
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

![](sa5_rmarkdown_example_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

### Histogram by group


```r
relax_histo_group <- ggplot(stress_data, aes(stress)) + 
                  geom_histogram() + 
                  facet_wrap(~ group)
plot(relax_histo_group)
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

![](sa5_rmarkdown_example_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

### Scatter plot stress by group


```r
group_relaxation <- ggplot(stress_data, aes(x = group, y = stress)) + 
                  geom_boxplot() 
plot(group_relaxation)
```

![](sa5_rmarkdown_example_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

### ANOVA analysis - Planned Contrasts


```r
# tell R which groups to compare
# Must sum to 0

c1 <- c(-1, .5, .5) # placebo vs. other groups
c2 <- c(0, 1, -1) # yoga vs. guided imagery

# combined the above 2 contrasts into a matrix
mat <- cbind(c1,c2)

# tell R that the matrix gives the contrasts you want
contrasts(stress_data$group) <- mat

### Run the anova
anova_1 <- aov(stress ~ group, data = stress_data)
summary.aov(anova_1) 
```

```
##             Df Sum Sq Mean Sq F value   Pr(>F)    
## group        2 1205.1   602.5   21.01 3.15e-06 ***
## Residuals   27  774.4    28.7                     
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
confint(anova_1)
```

```
##                   2.5 %    97.5 %
## (Intercept)  55.1270991 59.139568
## groupc1     -11.1039104 -5.429423
## groupc2       0.5428749  5.457125
```

```r
### Output the ANOVA result
summary.aov(anova_1, split=list(group=list("placebo vs. other groups"=1, "yoga vs. guided imagery" = 2))) 
```

```
##                                   Df Sum Sq Mean Sq F value   Pr(>F)    
## group                              2 1205.1   602.5  21.008 3.15e-06 ***
##   group: placebo vs. other groups  1 1025.1  1025.1  35.740 2.24e-06 ***
##   group: yoga vs. guided imagery   1  180.0   180.0   6.276   0.0186 *  
## Residuals                         27  774.4    28.7                     
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### ANOVA analysis - Polynomial contrasts


```r
### Us the function get to polynomial contrats
contrasts(stress_data$group) <- contr.poly(3)
anova_2 <- aov(stress ~ group, data = stress_data)

summary.aov(anova_2, split=list(group=list("linear"=1, "quadratic" = 2))) 
```

```
##                    Df Sum Sq Mean Sq F value   Pr(>F)    
## group               2 1205.1   602.5  21.008 3.15e-06 ***
##   group: linear     1 1185.8  1185.8  41.344 6.87e-07 ***
##   group: quadratic  1   19.3    19.3   0.672     0.42    
## Residuals          27  774.4    28.7                     
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### Tukey posthoc test


```r
tukey_hsd_test<- PostHocTest(anova_1, method = "hsd")
tukey_hsd_test
```

```
## 
##   Posthoc multiple comparisons of means : Tukey HSD 
##     95% family-wise confidence level
## 
## $group
##                         diff    lwr.ci      upr.ci   pval    
## guided imagery-placebo  -9.4 -15.33835 -3.46165421 0.0015 ** 
## yoga-placebo           -15.4 -21.33835 -9.46165421  2e-06 ***
## yoga-guided imagery     -6.0 -11.93835 -0.06165421 0.0473 *  
## 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
bonf_test <- PostHocTest(anova_1, method = "bonferroni")
bonf_test
```

```
## 
##   Posthoc multiple comparisons of means : Bonferroni 
##     95% family-wise confidence level
## 
## $group
##                         diff    lwr.ci     upr.ci    pval    
## guided imagery-placebo  -9.4 -15.51328 -3.2867166  0.0016 ** 
## yoga-placebo           -15.4 -21.51328 -9.2867166 2.1e-06 ***
## yoga-guided imagery     -6.0 -12.11328  0.1132834  0.0557 .  
## 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### Games Howell


```r
pairwise_comp <- pairwise_comparisons(data = stress_data, x = group, y = stress, type = "parametric", var.equal = FALSE )
pairwise_comp
```

```
## # A tibble: 3 x 11
##   group1 group2 mean.difference    se t.value    df p.value significance label
##   <chr>  <chr>            <dbl> <dbl>   <dbl> <dbl>   <dbl> <chr>        <chr>
## 1 yoga   guide…             6    1.84    2.31  14.5   0.086 ns           list…
## 2 yoga   place…            15.4  1.33    8.16  18.0   0     ***          list…
## 3 guide… place…             9.4  1.86    3.58  14.8   0.014 *            list…
## # … with 2 more variables: test.details <chr>, p.value.adjustment <chr>
```


