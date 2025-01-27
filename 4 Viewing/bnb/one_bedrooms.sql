CREATE VIEW "one_Bedrooms" AS
SELECT "id" , "property_type" , "host_name",
"accommodates" FROM "listings"
WHERE "bedrooms" = 1;
