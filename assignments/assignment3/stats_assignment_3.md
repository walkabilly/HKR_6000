---
title: "Assignment 3"
author: "Daniel Fuller"
date: "27/01/2021"
output:
      html_document:
        keep_md: true
---

# Statistics Assignment 3 - Comparing Means

## General Instructions

For each dataset, analyze the data with the appropriate t-test to answer your research question. Your report should include the following headings. 

You must submit the following

**SPSS**
  - Syntax file
  - Report in Word doc form

**R**
  - RMarkdown file
  - Knit report in HTML or PDF

## Part 1 - Explore the data 

1. Identify the variable types for each variable in the dataset

2. For __each variable separately__ answer and conduct the analysis for the following

    * Are their outliers? 
        * How many? What are their values?
    * Are their missing data?
        * How many cases? 
    * Compute or create a new variable to deal with the outliers
    * Compute or create a new variable to deal with the missing
    * Compute or create a new variable that you feel is corrected for outliers and missing data

3. Compare the the descriptive statistics for continuous (quantitative) variables with non-cleaned, outliers cleaned, missing cleaned, and final cleaned variables. 

4. Compare the histograms for continuous (quantitative) variables with non-cleaned, outliers cleaned, missing cleaned, and final cleaned variables. 

## Part 2 - Format and Effort 

### General Formatting
- A combination sentences/paragraphs with some bullet points is appropriate.
- Include a list of references where appropriate. For this assignment, you do not need to worry
about providing references to the scales/items within the dataset.

### OVERALL
- Assignments will be evaluated based on the overall effort and thoroughness of the assignment, attention to details, and overall presentation of results.

## Data

### Purpose
These are simulated data that I created. This is __NOT__ the same dataset as assignment 1. Do not be fooled. There are lots of tricky thing hidden in there. 

**Variables**		

Name	| Description |	Units 
----- | ----------- | -----  
id | 	Unique identifer for each individual participant | 	NA 
age_years | 	Age in years | 	years 
bench_press_max_lbs | 	1 rep max bench press in pounds | 	pounds 
height_cm | 	Height in centimeters | 	centimeters 
weight_kg | 	Weight in kilograms | 	kilograms 
age_category | 	Age category where less than 40 years old = young and <= 40 years old = old |	NA 

### Methods
#### Design
This study used a cross-sectional survey research design to examine the differences in the associations between age, height, weight, and bench press max.

#### Sample
The population for this study consisted of individuals residing in the St. John’s area. A sample (n = 10,000) participants were recruited to come into the lab. 

#### Dependent Variable

Bench press max 

* Bench press max was measured using a 1RM bench press test for each participant. Participants were instructed to warm up properly and completed the PAR-Q prior to begining exercising. 

##### Independent Variables

Age

* Participants were asked their age in years, months, and days. 

Height

* Height was measured using a stadiometer

Weight

* Weight was measured using a calibrated scale
