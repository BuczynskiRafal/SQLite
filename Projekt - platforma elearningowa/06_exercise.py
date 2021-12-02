import sqlite3


conn=sqlite3.connect('esmartdata.sqlite3')
cur=conn.cursor()
cur.execute("""DROP INDEX IF EXISTS 'esmartdata_course_instructor_id_idx'""")
cur.execute("""
CREATE INDEX IF NOT EXISTS 'esmartdata_course_instructor_id_idx' ON 'esmartdata_course' ('instructor_id')
""")

conn.commit()
conn.close()