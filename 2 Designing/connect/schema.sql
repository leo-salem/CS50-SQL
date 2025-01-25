
create table users(
                   "id" INTEGER,
                   "username" INTEGER UNIQUE,
                   "first_name" TEXT NOT NULL,
                   "last_name" TEXT NOT NULL,
                   "password" TEXT NOT NULL,
                    PRIMARY KEY("id")
);

create table schools(
                   "id" INTEGER,
                   "name" TEXT NOT NULL,
                   "type" TEXT NOT NULL,
                   "location" TEXT NOT NULL,
                   "foundation_year" INTEGER,
                   PRIMARY KEY("id")
);

create table companies(
                   "id" INTEGER,
                   "name" TEXT NOT NULL,
                   "indutry" TEXT NOT NULL,
                   "location" TEXT NOT NULL,
                   PRIMARY KEY("id")
);

create table connections(
                   "id" INTEGER,
                   "end_user_id" INTEGER,
                   "end_school_id" INTEGER,
                   "end_company_id" INTEGER,
                   PRIMARY KEY("id"),
                   FOREIGN KEY("end_user_id") REFERENCES "users"("id"),
                   FOREIGN KEY("end_school_id") REFERENCES "schools"("id"),
                   FOREIGN KEY("end_company_id") REFERENCES "companys"("id")
);

