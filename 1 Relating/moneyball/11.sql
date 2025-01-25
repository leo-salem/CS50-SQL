SELECT "players"."first_name" , "players"."last_name",  ("salaries"."salary" /"performances"."H")
AS 'dollars per hit'
FROM "players"
JOIN "performances" ON "performances"."player_id"="players"."id"
JOIN "salaries" ON "players"."id"= "salaries"."player_id"
WHERE  "salaries"."year"="performances"."year" AND "performances"."H" > 0 AND "salaries"."year"=2001
ORDER BY  "dollars per hit","players"."first_name" ASC,"players"."last_name" ASC limit 10;
