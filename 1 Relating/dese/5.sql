SELECT "city"  ,count(*) from "schools" WHERE type = 'Public School'
GROUP BY "city" HAVING count(*)<4 ORDER BY count(*) DESC, "city" ASC;
