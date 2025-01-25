select ROUND(AVG("height"),2) as 'Average Heigh',ROUND(AVG("weight"),2) as 'Average Weight' from "players" where "debut">='2000-01-01';
