SELECT "performances"."year", "performances"."HR"
from "performances"
join "players" on "performances"."player_id"="players"."id"
where "players"."first_name"= 'Ken' AND "players"."last_name" ='Griffey' AND "players"."birth_year"=1969
order by "year" DESC;
