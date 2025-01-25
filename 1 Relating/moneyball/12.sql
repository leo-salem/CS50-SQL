SELECT * from
(
SELECT "players"."first_name" , "players"."last_name"
FROM "players"
JOIN "performances" ON "performances"."player_id"="players"."id"
JOIN "salaries" ON "players"."id"= "salaries"."player_id"
WHERE  "salaries"."year"="performances"."year" AND "performances"."H" > 0 AND "salaries"."year"=2001
ORDER BY   ("salaries"."salary" /"performances"."H"),"players"."first_name" ASC,"players"."last_name" ASC limit 10
)

INTERSECT

SELECT * from
(
SELECT "players"."first_name" , "players"."last_name"
FROM "players"
JOIN "performances" ON "performances"."player_id"="players"."id"
JOIN "salaries" ON "players"."id"= "salaries"."player_id"
WHERE  "salaries"."year"="performances"."year" AND "performances"."RBI" > 0 AND "salaries"."year"=2001
ORDER BY   ("salaries"."salary" /"performances"."RBI"),"players"."first_name" ASC,"players"."last_name" ASC limit 10
)

ORDER BY "last_name";
