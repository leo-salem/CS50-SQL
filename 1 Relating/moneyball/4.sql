SELECT"players"."first_name","players"."last_name","salaries"."salary"
from "salaries"
join "players" on "salaries"."player_id"="players"."id"
where "salaries"."year"=2001
order by "salaries"."salary" ASC,"players"."first_name" ASC,"players"."last_name" ASC, "players"."id" ASC limit 50;
