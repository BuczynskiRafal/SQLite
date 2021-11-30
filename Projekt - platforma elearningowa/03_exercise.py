import sqlite3

query = """
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
conn = sqlite3.connect("esmartdata.sqlite3")
cur = conn.cursor()
cur.executescript(query)
conn.commit()
conn.close()