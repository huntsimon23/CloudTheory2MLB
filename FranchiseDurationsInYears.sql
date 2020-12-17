select "franchID", "name" as franch_name, min("yearID") as start_year, max("yearID") as end_or_most_recent_year, count("yearID") as num_years_in_MLB
from "Teams"
group by "franchID", "name"
order by count("yearID") desc