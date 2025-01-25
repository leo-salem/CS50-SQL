SELECT DISTINCT("teams"."name")
from "performances"
join "players" on "performances"."player_id"="players"."id"
join "teams" on "performances"."team_id"="teams"."id"
where "players"."first_name"= 'Satchel' AND "players"."last_name" ='Paige';
