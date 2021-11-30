import sqlite3

query="""
SELECT * FROM "esmartdata_instructor";
"""

conn=sqlite3.connect('esmartdata.sqlite3')
cur=conn.cursor()
cur.execute(query)
for _ in cur.fetchall():
    print(_)

conn.close()

