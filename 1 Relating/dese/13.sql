select "districts"."state","expenditures"."per_pupil_expenditure","staff_evaluations"."exemplary"
from "districts"
join "expenditures" on "districts"."id"="expenditures"."district_id"
join "staff_evaluations" on "staff_evaluations"."district_id"="districts"."id"
WHERE "expenditures"."per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
AND "staff_evaluations"."exemplary" > (SELECT AVG("exemplary") FROM "staff_evaluations")
AND  "districts"."type"='Public School District'
ORDER BY "staff_evaluations"."exemplary" DESC, "expenditures"."per_pupil_expenditure" Desc;
