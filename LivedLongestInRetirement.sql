with death_dates as (
    select cast(z."deathYear"||'-'||z."deathMonth"||'-'||z."deathDay" as date) death_date,
           z."playerID"
    from "People" z
    where z."deathYear" is not null and z."finalGame" is not null
)
select "People"."playerID",
       "nameFirst",
       "nameLast",
       "People"."finalGame" as last_game,
       death_dates.death_date as death,
       sum(death_date - "People"."finalGame") as retirement_length_days
from "People"
inner join death_dates on death_dates."playerID"="People"."playerID"
where death_date is not null and "finalGame" is not null
group by "People"."playerID", "finalGame", "nameFirst",
       "nameLast", death_date
order by retirement_length_days desc
