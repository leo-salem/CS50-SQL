select "districts"."name", "expenditures"."per_pupil_expenditure"
from "districts"
join "expenditures" on
"districts"."id"="expenditures"."district_id" and "districts"."type"='Public School District'
 order by "expenditures"."per_pupil_expenditure" desc limit 10;
