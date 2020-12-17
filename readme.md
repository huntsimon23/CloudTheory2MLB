Pre-employment project: MLB by Simon Hunt for Adam Page at Cloud Theory
Submittted: 12-17-2020

## Requirement 1: Create a report that shows the start and end of each Baseball franchise and how many years they operated 
Include the following fields:
i.      Franchise ID
ii.      Franchise Name
iii.     Starting year
iv.      Ending year
v.      Number of years in MLB (order descending using this field)

Report: FranchiseDirationsInYears.csv
SQL: FranchiseDurationsInYears.sql

## Requirement 2: Salary growth over time
I am interested in the Salary growth of baseball players. Our source data only goes back some years, but much has changed in Baseball in this period. Please provide reports that provide statistical insight into the following:
i.      The player costs aggregated from the Teams perspective (looking at it by an annual basis) –

## What teams have the most expensive payrolls, and the cheapest payrolls?

Report: AgregateTeamSalariesByYear.csv
SQL: AgregateTeamSalariesByYear.sql
Notes: 

## What teams had the greatest degree of variance between players in the team?

Report: SalaryVarianceByTeamAndYear.csv
SQL: SalaryVarianceByTeamAndYear.sql

## Player cost from the leagues perspective: How much does the average player cost increase over the period we have data for?

Report: AverageSalaryByYear.csv
SQL: AverageSalaryByYear.sql
Notes: Reordered columns and added %change columm, dec(10,2) formatting

## Data analysis requirement: Who lived the longest after their last appearance in baseball?

Report: LivedLongestInRetirement.csv
SQL: LivedLongestInRetirement.sql

## Requirement 3: Salesforce ID validation and converter

##   i.      sfdc15to18(String id) returns String
Converts a 15 digit ID to a returning 18 digit ID
Throws an error if not a 15 digit ID or null or empty string

SQL: sfdc15to18.sql
Note: Corrected to align with requirement to throw errors. Test case passed.

##   ii.      sfdc18to15(String id) returns String
Converts an 18 digit ID to a returning 15 digit ID
Throws an error if not an 18 digit ID or null or empty string

SQL: sfdc18to15.sql
Note: Corrected to align with requirement to throw errors. Both test cases passed.

## iii.      sfdcIsValidId(String id) returns Boolean
Checks to see if an ID is valid based on length
Does not throw any errors

SQL: sfdcIsValidId.sql

