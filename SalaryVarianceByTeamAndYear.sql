select "Salaries"."yearID"           as "Year",
       "Teams".name                  as "Team Name",
       min("salary")                 as "Low Salary",
       max("salary")                 as "High Salary",
       max("salary") - min("salary") AS "Salary Variance"
from "Salaries"
         inner join "Teams" on "Salaries"."teamID" = "Teams"."teamID" AND  "Salaries"."yearID"="Teams"."yearID"
group by "Year", "Team Name"
order by "Salary Variance" desc