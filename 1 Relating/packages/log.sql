
-- *** The Lost Letter ***
select "address","type" from "addresses" where "id"=
  (select "address_id" from "scans" where "package_id"=
     (select "id" from "packages" where
      "from_address_id"=(select "id" from "addresses" where "address"='900 Somerville Avenue')
      and
      "contents" like '%congratulatory%')
  AND "action"='Drop'
  ORDER BY "timestamp" DESC limit 1);

-- *** The Devious Delivery ***
SELECT "type" FROM "addresses"WHERE "id"=
    (SELECT "address_id" FROM "scans" WHERE
     "action" = 'Drop'
     AND
     "package_id"=
           (SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL));

SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;
-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages"WHERE "from_address_id" =
     (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street')
     AND
     "to_address_id" =
     (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place');

SELECT "name" FROM "drivers" WHERE "id" =
     (SELECT "driver_id" FROM "scans" WHERE
     "package_id" =
           (SELECT "id" FROM "packages" WHERE "from_address_id" =
                 (SELECT "id" FROM "addresses"WHERE "address" = '109 Tileston Street')
           AND
           "to_address_id" =
                 ( SELECT "id"FROM "addresses" WHERE "address" = '728 Maple Place')
            )
  ORDER BY "timestamp" DESC
  LIMIT 1);
