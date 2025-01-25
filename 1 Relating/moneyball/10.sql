SELECT "players"."first_name" , "players"."last_name",  "salaries"."salary" , "performances"."HR" , "salaries"."year"
FROM "players"
JOIN "performances" ON "performances"."player_id"="players"."id"
JOIN "salaries" ON "players"."id"= "salaries"."player_id"
WHERE  "salaries"."year"="performances"."year"
ORDER BY "players"."id","salaries"."year" DESC,"performances"."HR" DESC , "salaries"."salary" DESC;

