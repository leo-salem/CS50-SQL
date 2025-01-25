SELECT"salaries"."salary"
from "players"
join "salaries" on "salaries"."player_id"="players"."id"
join "performances" ON "performances"."player_id"="players"."id"
where "salaries"."year"=2001 AND "performances"."HR"=(select MAX(HR) from "performances" where "year"=2001);
