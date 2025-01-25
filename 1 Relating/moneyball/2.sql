SELECT "year","salary"
from "salaries"
join "players" on "salaries"."player_id"="players"."id"
where "players"."first_name"= 'Cal' AND "players"."last_name" like'%Ripken%'
order by "year" DESC;
