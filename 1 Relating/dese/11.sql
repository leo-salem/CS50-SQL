select "schools"."name","expenditures"."per_pupil_expenditure","graduation_rates"."graduated"
from "schools"
join "expenditures" on"schools"."district_id"="expenditures"."district_id"
join "graduation_rates" on "graduation_rates"."school_id"="schools"."id"
order by "expenditures"."per_pupil_expenditure" desc ,"schools"."name" asc;
