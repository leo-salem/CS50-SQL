SELECT COUNT(*) from "views" where "artist"='Hokusai' AND
("english_title" like 'Fuji' OR "english_title" like '%Fuji'or "english_title" like 'Fuji%' or "english_title" like '%Fuji%');
