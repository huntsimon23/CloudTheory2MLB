with average_salaries as (
    select z."yearID",
           cast(avg(z."salary") as dec(10,2)) as avg_salary
           from "Salaries" z
           group by z."yearID"
)
select *, this_year.avg_salary-prev_year.avg_salary as yoy_change_$,
       cast(((this_year.avg_salary-prev_year.avg_salary)/prev_year.avg_salary)*100 as dec(10,2)) as "%_change"
from average_salaries this_year
left join average_salaries prev_year on prev_year."yearID"=this_year."yearID"-1
where prev_year."yearID" is not null
order by this_year."yearID"