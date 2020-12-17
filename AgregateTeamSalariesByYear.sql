select "Salaries"."yearID" as "Year", "Teams".name as "Team Name", sum("salary") as "Agregate Team Salary in Dollars"
from "Salaries"
         inner join "Teams" on "Salaries"."teamID" = "Teams"."teamID" and "Teams"."yearID" = "Salaries"."yearID"
group by "Year", "Team Name"
order by "Agregate Team Salary in Dollars" desc