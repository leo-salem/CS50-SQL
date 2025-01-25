SELECT "year",ROUND(AVG("salary"),2) as 'average salary' from "salaries"
group by "year" order by "year" DESC;
