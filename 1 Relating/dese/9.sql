select "districts"."name" from "districts"
join "expenditures" on
"districts"."id"="expenditures"."district_id" order by "expenditures"."pupils" asc limit 1;
