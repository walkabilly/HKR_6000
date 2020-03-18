---
title: "Statistics Assignment 6"
author: "Daniel Fuller"
date: "03/03/2020"
output:
      html_document:
        keep_md: true
---

# Statistics Assignment 6 - Repeated Measures ANOVA

## General instructions

You must submit the following. 

**SPSS** 

- Syntax file
- Report in Word doc form with tables/figures cut and pasted from SPS output file

**R**

- RMarkdown file
- Knit report in HTML or PDF

Your report should include the following headings

1. Research Question
2. Research Design and Variables
3. Analysis and Results

## Data and research question

You have decided to run an experiment to determine the effect of different doses of an iron supplement on blood iron levels. You conducted a repeated measures design experiment (1 X 4). You developed 4 conditions. First the subjects take an iron supplement that is a very low dose for 1 month (condition 1). Following month one, you measure the outcome: blood iron levels (measured on a scale of 0-30, with higher scores indicating greater blood iron levels). Next, subjects take an iron supplement that is a low dose, for another month (condition 2). After this you measure the outcome again. Next, subjects take an iron supplement that is a medium dose for another month (condition 3). After this you measure the outcome again. Finally, subjects take an iron supplement that is a high dose, for another month (condition 4). After this you measure the outcome again. You have recruited 20 participants to the study. There are 4 variable in this data set:

- Very low (condition 1)
- Low (condition 2)
- Medium (condition 3)
- High (condition 4)

Analyze the data with a one-way repeated measures design to determine which does of iron supplement lead to the greatest increase in iron blood levels.

## Research Question
Does iron supplement level differ by vitamin C intake? 

## Part 1 Explore the data

- Discuss the normality of the data
- Must report and discuss the following for all main variables (IV & DV):
    - Histograms
    - Skewness & Kurtosis
    - Kolmogorov-Smirnov test
- Identify and discuss any outliers by presenting boxplots for all main variables (IV & DV) 
- Descriptive statistics for all main variables (IV & DV) (mean, standard deviation, and standard error) 
    - Overall
    - By group

## Part 2 Assumption of Sphericity

Report and describe whether or not the data meets the assumptions of sphericity. If sphericity is violated, report which correction of estimates of sphericity you will be using and why (Greenhouse and Geisser’s OR Huynh and Feldt’s).

## Part 3 RM ANOVA – planned comparisons

Report and describe the F-tests for within subject effects.  

- Make sure you report the F-test for the overall effect as well as the F-tests for the planned comparisons.
- Remember to make sure you report the correct F-test (degrees of freedom change) if sphericity has
been violated.
- Make sure you report the type of defined contrast you used.

## Part 4 RM ANOVA – posthoc comparisons

- Report and describe the results of the post hoc tests on main effects.
- State the post hoc correction used and why (with a reference)
- Make a conclusion about the results in terms of which condition may be most effective.
