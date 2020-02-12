---
title: "Tips and Tricks"
author: "Daniel Fuller"
date: "12/02/2020"
output:
      html_document:
        keep_md: true
---

# Tips and Tricks for Reporting Statistical Results

## Format of Statistical Results

### General Formatting
- Do not start a sentence with a number. Spell out the number (e.g., “Forty-six participants were female”).
- Symbols for statistics are formatted in italics (exceptions are very rare)
- Put a leading zero before decimal fractions less than one (e.g., 0.25 km), unless the fraction can never be greater than one, as with correlation (e.g., *r* = .28).
- Degrees of freedom should be in subscript. Make sure that appropriate symbols are in superscript.
- Always report effect estimates (e.g., *beta*). Never report only a *p* values. 
- Prefer reporting confidence intervals over *p* values. 
- Do not state that p = .000. You cannot be 100% confident that the results you found are not by chance alone. SPSS only reports p-values to three decimal places; if SPSS reports a p-value of .000, interpret the result as *p* < .001).
- Make sure you have a space before and after equals signs.

### Decimal Places
The number of decimal places you use when reporting results depends on the level of measurement of your variable. That is how many decimal places to use depends on how precise you were in measuring the variable. A general rule of thumb is that for statistics, such as means and frequencies, you report one decimal place greater than the level of measurement of the variable. For statistics that report variability (e.g., standard deviation, standard error) you report two decimal places greater than the level of measurement of the variable. When in doubt, use 2 decimal places.

For example assume you asked participants to rate their health on a scale of 1 to 5 (1 = poor health; 5 = excellent health ). The level of measurement of this variable is a whole number (i.e., no decimal places). Therefore, for the mean you would round to one decimal place and for the standard deviation you would round to two decimal places (e.g., M = 1.9, SE = 0.08). In contrast, if you measured participant’s surface EMG (Hz) the equipment you use might measure the muscle electrical activity at the precision of 1 decimal point (e.g., 125.3 Hz). In this case you would report a mean value rounded to 2 decimal places and a standard deviation rounded to 3 decimal places (e.g., M = 125.27, SE = 354.92).

## Tables and Figures

Is the table or figure necessary? Visual materials such as tables and figures can be used quickly and efficiently to present a large amount of information to an audience. However, visuals must be used to assist communication, not to use up space. For example, sometimes it might be better to present statistics in the text rather than a table.

Make sure you refer in the text to all tables and figures. For example: “Figures 1 and 2 are histograms for the independent and dependent variables.”

If you are using figures or tables from other sources, be sure to gather all the information you will need to properly document your sources.

Each table and figure must be intelligible without reference to the text, so be sure to include an explanation of every abbreviation (except the standard statistical symbols and abbreviations). Abbreviations, terminology, probability level values must be consistent across tables and figures in the same article. Make sure that
all probability level values are correctly identified, and asterisks attached to the appropriate table entries. 

Ensure that the probability level assigned the same number of asterisks is the same in all the tables in the same document.

Make sure that all formats, titles and headings are consistent for all tables and figures in a document.
When appropriate, you may use the title to explain an abbreviation parenthetically. 

For theses, you will have to create a Table of Tables and a Table of Figures. Using the “Captions” and “Table of Figures” features in Word (under the Reference menu) you can format tables and figure titles in order to automatically generate the Table of Tables and Table of Figures. It is highly recommended that you learn these tools as they will save you time, headaches and heartaches when you are formatting your thesis for submission.

## Managing Participant IDs

It is important to provide an identifying number to each participant (e.g., 001, 002,..., 213). This is done for ethical reasons. You should not be able to identify or link your data to an actual participant (i.e., you should not know that case #5 is the data for John Doe). I often see students record the actual name of participants into their data file – this is a ‘big no-no’ and is against the research ethics approval. You also provide an identifying number to each participant as part of good, ethical data management. On the consent form record a unique number for the participant (001, 002,..., 010...). 

## Data Management

It is unethical to have the information that links people’s names to their participant code in an unsecure place. You can’t just keep your consent forms and surveys in a box under your desk. 

- You must store the hard copies of the data (and consent forms) in a secure location (e.g., locked filing cabinet). If you are a student, this location is typically a cabinet in your supervisor’s office or lab. 
- You also should NEVER have data on servers in the United States. That means you can't put data on Dropbox or Google Drive. 
- Keep data on a local computer and backup the MUN servers. 
- Transfer data with a USB key. 
- Your computer should MUST be encrypted (Bitlocker for Windows or Filevault for Mac)

