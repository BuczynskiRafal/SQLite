import sqlite3

query= """DROP TABLE IF EXISTS "esmartdata_instructor";
CREATE TABLE IF NOT EXISTS "esmartdata_instructor"
(
"id" integer NOT NULL 
, "first_name" text NOT NULL 
, "last_name" text NOT NULL 
, "description" text NOT NULL 
, PRIMARY KEY("id" AUTOINCREMENT)
);
"""

conn = sqlite3.connect("esmartdata.sqlite3")
cur = conn.cursor()
cur.executescript(query)
conn.commit()
conn.close()