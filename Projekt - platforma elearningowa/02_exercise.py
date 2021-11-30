import sqlite3

query = """DROP TABLE IF EXISTS "esmartdata_course";
CREATE TABLE IF NOT EXISTS "esmartdata_course"
(
"id" integer NOT NULL 
, "title" text NOT NULL 
, "subtitle" text NOT NULL 
, "description" text NOT NULL 
, "category" text NOT NULL 
, "language" text NOT NULL 
, "length" text NOT NULL 
, "rating" real NOT NULL 
, "referral_link" text NOT NULL 
, "instructor_id" integer NOT NULL 
, PRIMARY KEY("id" AUTOINCREMENT)
, FOREIGN KEY("instructor_id") 
REFERENCES "esmartdata_instructor"("id")
ON DELETE CASCADE ON UPDATE CASCADE
);
"""

conn=sqlite3.connect("esmartdata.sqlite3")
cursor = conn.cursor()
cursor.executescript(query)
conn.commit()
conn.close()

