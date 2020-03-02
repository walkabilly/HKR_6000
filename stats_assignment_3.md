---
title: "Statistics Assignment 3"
author: "Daniel Fuller"
date: "12/02/2020"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---

# Statistics Assignment 3 - Comparing Means

## General Instructions

For each dataset, analyze the data with the appropriate t-test to answer your research question. Your report should include the following headings. 

1. Research Question
2. Research Design and Variables
3. Analysis and Results

You must submit the following with.

**SPSS**
  - Syntax file
  - Report in Word doc form

**R**
  - RMarkdown file
  - Knit report in HTML or PDF

## Part 1 - Dependent T-Test (Comparing Means in one sample)

Imagine that you have decided to run an experiment to determine the effect of impact of different health promotion programs on the health-related quality of life of university students (see data set: (“DependentTTest.sav”). You conducted a repeated measures design experiment with two conditions. 

- Data
    - `DependentTTest.sav` 
    - `DependentTTest.csv`

- Condition 1
    - All of the university students participated in a health and lifestyle education program. 
- Condition 2
    - All of the university students participate in an exercise program.
    
- Outcome variable
    - Health related quality of life (measured on a scale of 0-50, with higher scores indicated greater health-related quality of life). 
    - Measure after condition 1 and after condition 2

## Part 2 - Independent T-Test (Comparing Means in two sample)

Imagine that you have decided to run an experiment to determine the effect of stable versus unstable stretching on performance of basketball foul shots (see data set: (“IndependentTTest.sav”). You have recruited 20 participants. You randomly assign 10 participants to Group 1 (stable stretching) and 10 participants to Group 2 (unstable stretching). Each participant performs the stretching exercises (stable or unstable depending on their assigned group) and then you have the participants throw foul shots and record how many successful baskets they get in 40 attempts. There are 2 variable in this data set

- Data
    - `IndependentTTest.sav` 
    - `IndependentTTest.csv`

- Group
    - Group 1 (1 = unstable stretching)
    - Group 2 (2 = stable stretching)

- Outcome
    - Foulshots - Number of successful foul shots out of 40 attempts

### Step 1: Explore the Data (24 points)
- Discuss the normality of the data
  - Histograms
  - Skewness & Kurtosis
  - Kolmogorov-Smirnov test
- Identify and discuss any outliers by examining the box plots.

### Step 2: Descriptive Statistics (6 points) 
- Discuss/report the mean, standard deviation, and standard error of main variables.
  - Note: You can include these in your report wherever you think they are appropriate. For example, in the example below the descriptive are reported in conjunction with the t-tests. Alternatively, you may report the descriptives with your discussion on exploring/normality of the data.
  
### Step 3: Boxplot or Beeswarm Plot (10 points)

**SPSS**
  - Normalize the scores to the grand mean (see example on D2L comparing means)
  - Create a boxplot of the two distributions side by side.
  
**R**  
  - Normalize the scores to the grand mean (see example on D2L comparing means)
  - Create a boxplot or beeswarn plot of the two distributions side by side.

### Step 4:  T-test (20 points)
- Calculate a the appropriate t-test. 
    - Make sure you use the observed variables (not the adjusted variables you calculated to normalize the mean for the error bar graph).
- Report and interpret the t-statistics (t-statistic, degrees of freedom, p-values & confidence interval).
  - Note: For leaning purposes you will be reporting both the p-value and confidence interval; however, one
would only report one of these in a research report/article.
- Calculate, report and interpret the effect size of the t-statistic.

## Write up Example

### Dependent T-Test

#### Research Question

To determine the effect of holding a real spider versus a picture of a spider on anxiety.

#### Research Design and Variables

Twelve participants were recruited to participate in a repeated measures design with two conditions. The conditions (independent variables) were 1) holding a real spider and 2) holding a picture of a spider. Conditions were not randomized. Following each condition anxiety (dependent variable) was measured using a survey scale. Scores could range from 1 to 60, with higher scores indicating greater anxiety.

#### Analysis and Results

Histograms for each condition were inspected. Both conditions appear to be normally distributed. Tests for normality were performed. Anxiety when viewing “real spider” condition was not skewed (zskewness = .00) and was insignificantly platykurtic (zkurtosis = -.81). Simlarly, anxiety when viewing “spider picture” condition was not skewed (zskewness = .01) and was insignificantly platykurtic (zkurtosis = -.91). Box plots indicated that there were no significant outliers in either condition. Anxiety when viewing “real spider” condition was normally distributed according to the Kolomogorov-Smirnov normality test (D(12) = 0.121, p > .05) as was anxiety when viewing “spider picture” condition (D(12) = 0.191, p > .05).

The normalized boxplot shows no overlap between the two groups. Therefore, the conditions are likely from different populations due to unequal variance and the experimental manipulation did have an effect. A paired samples t- test was calculated and results are as follows. On average, participants reported greater anxiety following holding the real spider (M = 47.0, SD = 11.03, SE = 2.68) compared to viewing the picture of the spider (M = 40.0, SD = 9.29, SE= 2.68, t(499) = 3.254, p< .05). The effect size of the differences between the conditions was large (r = .60). The effect size of the differences between the conditions was large (r = .60). A 95% confidence interval for the true mean difference in anxiety level is (-13.23, -0.77), thus the data provides evidence that holding a real spider produces higher anxiety than holding a picture of a spider.

### Independent T-Test

#### Research Question

To determine the effect of holding a real spider versus a picture of a spider on anxiety. 

#### Research Design and Variables

Twenty-four participants were recruited to participate in a 2-group post-test only experimental study. Participants were randomized into each of the two experimental conditions (12 participants per group): 1) holding a real spider and 2) holding a picture of a spider. Following each condition anxiety (dependent variable) was measured using a survey scale. Scores could range from 1 to 60, with higher scores indicating greater anxiety.

#### Analysis and Results

Histograms for each condition were inspected. Both conditions appear to be normally distributed. Tests for normality were performed. Anxiety when viewing “real spider” condition was not skewed (zskewness = .00) and was insignificantly platykurtic (zkurtosis = -.81). Simlarly, anxiety when viewing “spider picture” condition was not skewed (zskewness = .01) and was insignificantly platykurtic (zkurtosis = -.91). Box plots indicated that there were no significant outliers in either condition. Anxiety when viewing “real spider” condition was normally distributed according to the Kolomogorov-Smirnov normality test (D(12) = 0.121, p > .05) as was anxiety when viewing “spider picture” condition (D(12) = 0.191, p > .05).

Levene’s test for testing homogeneity of variance was performed (F (1, 22) = 0.782, ns). Therefore, equal variance is assumed between experimental groups and the test of homogeneity was not violated. An error bar graph reveals a large amount of overlap indicating that these samples are likely from the same population and have similar variances. Thus the experimental manipulation (whether participant was in the real or picture condition) may not have affected the level of anxiety reported. An independent t-test was calculated and results are as follows. On average, participants experienced greater anxiety to real spiders (M = 47.0, SD = 11.03, SE = 2.68) compared to viewing the picture of the spider (M = 40.0, SD = 9.29, SE= 2.68, t(22) = 1.68, p > .05). This difference was not statistically significant (t(22) = 1.68, p > .05); however, the effect size of the this difference was medium (r = .34). Finally, a 95% confidence interval for the true mean difference in anxiety level is (-1.63, 15.63), suggesting there is weak evidence that holding a real spider produces higher anxiety than holding a picture of a spider.


