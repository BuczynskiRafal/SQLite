import sqlite3

query1 = """
INSERT INTO "esmartdata_instructor"(
"id"
, "first_name"
, "last_name"
, "description"
)
VALUES (
1
, "Paweł"
, "Krakowiak"
, "Data Scientist/Python Developer/Securities Broker"
);
"""
query2 = """
INSERT INTO "esmartdata_instructor"(
"id"
, "first_name"
, "last_name"
, "description"
)
VALUES (
2
, "takeITeasy"
, "Academy"
, "Akademia Programowania"
)
"""

conn = sqlite3.connect("esmartdata.sqlite3")
cur = conn.cursor()

cur.executescript(query1)
cur.executescript(query2)
conn.commit()

conn.close()