select "franchID" as "Franchise ID", "name" as "Team Name", min("yearID") as "Start Year", max("yearID") as "Most Recent Year", count("yearID") as "Number of Teams Fielded", max("yearID") - min("yearID") as "Franchise Duration in Years"
from "Teams"
group by "Franchise ID", "Team Name"
order by "Franchise Duration in Years" desc;