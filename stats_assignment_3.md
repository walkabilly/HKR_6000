---
title: "Statistics Assignment 3"
author: "Daniel Fuller"
date: "12/02/2020"
output:
      html_document:
        keep_md: true
---

# Statistics Assignment 2 - Comparing Means

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

## General Instructions

For each dataset, aalyze the data with the appropriate t-test to answer your research question. Your report should include the following headings.

1. Research Question
2. Research Design and Variables
3. Analysis and Results

### Step 1: Explore the Data (24 points)
- Discuss the normality of the data
  - Histograms
  - Skewness & Kurtosis
  - Kolmogorov-Smirnov test
- Identify and discuss any outliers by examining the box plots.

  
### Step 2: Descriptive Statistics (6 points) 
- Discuss/report the mean, standard deviation, and standard error of main variables.
  - Note: You can include these in your report wherever you think they are appropriate. For example, in the example below the descriptive are reported in conjunction with the t-tests. Alternatively, you may report the descriptives with your discussion on exploring/normality of the data.
  
### Step 3: Error Bar Graph or Beeswarm Plot (10 points)

**SPSS**  
  - Normalize (z-score) the `education` and `exercise` variables  
  - Draw an error bar graph (using the adjusted mean computed when normalizing the mean). 
  - Interpret the graph in 1-2 sentences.
  
**R**  
  - Create a density plot of the two distributions overlayed

### Step 4:  T-test (20 points)
- Calculate a the appropriate t-test. 
    - Make sure you use the observed variables (not the adjusted variables you calculated to normalize the mean for the error bar graph).
- Report and interpret the t-statistics (t-statistic, degrees of freedom, p-values & confidence interval).
  - Note: For leaning purposes you will be reporting both the p-value and confidence interval; however, one
would only report one of these in a research report/article.
- Calculate, report and interpret the effect size of the t-statistic.


