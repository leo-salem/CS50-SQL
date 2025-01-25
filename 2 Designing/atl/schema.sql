create table Passengers ("id" INTEGER,
                         "first_name" TEXT NOT NULL,
                         "last_name" TEXT NOT NULL,
                         "age" INTEGER,
                         PRIMARY KEY("id")
);

create table Check_Ins ("id" INTEGER,
                        "passenger_id" INTEGER,
                        "checked_date" TEXT DEFAULT CURRENT_TIMESTAMP,
                        "flight_id" INTEGER,
                        PRIMARY KEY("id"),
                        FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
                        FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

create table Airlines ("id" INTEGER,
                       "name" TEXT,
                       "concourse" TEXT CHECK ("concourse" IN ("A" , "B" , "C" , "D" , "E" , "F")),
                        PRIMARY KEY("id")
);

create table Flights ("id" INTEGER,
                      "Airline_id" INTEGER,
                      "departing_airport" TEXT NOT NULL,
                      "heading_airport" TEXT NOT NULL,
                      "departue_date" TEXT DEFAULT CURRENT_TIMESTAMP,
                      "arrival_date" TEXT DEFAULT CURRENT_TIMESTAMP,
                      PRIMARY KEY("id"),
                      FOREIGN KEY("Airline_id") REFERENCES "Airlines"("id")
);

