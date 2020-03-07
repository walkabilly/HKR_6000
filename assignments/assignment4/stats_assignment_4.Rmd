---
title: "Statistics Assignment 4"
author: "Daniel Fuller"
date: "12/02/2020"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---

# Statistics Assignment 4 - Regression

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

## Data and rationale

Data for the Assignment  

- ExerciseAdherance_OlderAdults.sav  
- ExerciseAdherance_OlderAdults.csv

A cross-sectional survey was conducted with the aim to explore the strength of barriers to exercise, motivation to exercise, and exercise-efficacy in predicting participation of older adults (65 years of age or older) in physically active leisure. A purposeful sample was recruited through seniors’ community groups. The overall response rate was 75.9 % for a total of 224 respondents. Five respondents had a large percentage of missing data (>80%), thereby reducing the sample to 219 respondents. Respondents completed a survey instrument that included questions pertaining to 1) Participation in physically active leisure activities (‘participation’ – higher scores = greater physical activity); 2) Barriers to exercise (‘barriers’ – average score of 24 barrier items, with 1 = “Not at all Prevent or Inhibit”, 5 = “Very Much Prevent or Inhibit”); 3) Motivation to exercise (‘motive’ – average score of 9 motivation items, with 1 = “Not at all”, 5 = “Very much”, higher scores = greater motivation to exercise); and 4) Exercise-efficacy (‘efficacy’ – average score of 24 efficacy expectation items, with 0% = “Very uncertain”, 100% = “Very uncertain”, higher scores = greater confidence to exercise). 

## Part 1 - Descriptive Statistics
- Report and discuss the mean, standard deviation, and standard error of all variables.

## Part 2 - Explore the Data & Assumptions

- Report and discuss the normality of the data:
  - Histograms
  - Skewness & Kurtosis
  - Kolmogorov-Smirnov test
  - Identify and discuss any outliers by examining the box plots.
- Report and discuss the Multicollinearity (remember that you have to run the regression model to get these diagnostics)
- Report on the Homoscedasticity and Independent Errors - Plot ZRESID against ZPRED.

## Part 2 - Multiple Regression

- Analyze the multiple regression model
  - Predictors
      - Barriers to exercise
      - Motivation to exercise
      - Exercise-efficacy 
  - Outocome: 
      - Physically active leisure
- Determine and state which method of regression and provide a rationale and reference
  - Hierarchical 
  - Blockwise entry
  - Stepwise forward 
  - Stepwise backward
- Report and discuss the following:
    - R2 and Adjusted R2
    - F-ratio (and its corresponding degrees of freedom and level of significance)
- How well does the Model fit the data? Analyze and discuss the following 
    - Residual Statistics 
    - Standardized Residuals
    - Influential cases 
    - Cook’s distance
- Determine which variables predicted participation and the strength of the associations.
    - Create a table that reports the regression model
        - Beta values
        - Confidence intervals
        - Standardized beta value
        - t-values
        - Level of significance
- Discuss the direction and significance of the relation between the variables.
- Discuss the strength of the associations in relation to each other.

