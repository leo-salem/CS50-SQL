CREATE TABLE "statement" (
    "sentence_id" INTEGER,"start" INTEGER, "length" INTEGER
    );
INSERT INTO "statement" ("sentence_id", "start", "length") VALUES
    ('14' , '98' , '4'),
    ('114' , '3' , '5'),
    ('618' , '72' , '9'),
    ('630' , '7' , '3'),
    ('932' , '12' , '5'),
    ('2230' , '50' , '7'),
    ('2346' , '44' , '10'),
    ('3041' , '14' , '5');

CREATE VIEW "message" AS
SELECT
    substr(
        (SELECT "sentence" FROM "sentences" WHERE "sentences"."id" = "statement"."sentence_id"),
        "statement"."start",
        "statement"."length"
    ) AS "phrase"
FROM
    "statement";

