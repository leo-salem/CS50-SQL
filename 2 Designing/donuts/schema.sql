create table ingrediants(
                         "id" INTEGER,
                         "name" TEXT NOT NULL,
                         "price" REAL,
                         "unit" TEXT DEFAULT 'pound',
                         PRIMARY KEY("id")
);

create table donuts(
                     "id" INTEGER,
                     "name" TEXT NOT NULL,
                     "ingrediant_id" INTEGER UNIQUE,
                     "gluten_free" TEXT CHECK ("gluten_free" IN ('yes','no')) DEFAULT 'no',
                     "price" REAL,
                     PRIMARY KEY("id"),
                     FOREIGN KEY ("ingrediant_id") REFERENCES "ingrediants"("id")
);

create table orders(
                     "id" INTEGER ,
                     "donut_id" INTEGER UNIQUE,
                     "customer_id" INTEGER UNIQUE,
                     PRIMARY KEY("id"),
                     FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
                     FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);

create table customers(
                     "id" INTEGER ,
                     "first_name" TEXT NOT NULL,
                     "last_name" TEXT NOT NULL,
                     "old_order_id" INTEGER UNIQUE,
                     PRIMARY KEY("id"),
                     FOREIGN KEY ("old_order_id") REFERENCES "orders"("id")
);




