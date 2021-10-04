DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS calendar;

CREATE TABLE category (
    id            INTEGER PRIMARY KEY,
    category_name TEXT    NOT NULL
);

CREATE TABLE calendar (
    id      INTEGER PRIMARY KEY,
    quarter TEXT    NOT NULL
);

INSERT INTO category (category_name)
VALUES ('in-store'), 
	   ('online');

INSERT INTO calendar (quarter)
VALUES ('Q1'), 
	   ('Q2'), 
	   ('Q3'), 
	   ('Q4');
	   
SELECT * FROM category;
SELECT * FROM calendar;

SELECT * FROM category CROSS JOIN calendar;
SELECT category_name, quarter FROM category CROSS JOIN calendar;

SELECT category_name, 
	   quarter 
FROM category 
CROSS JOIN calendar;

SELECT category_name, 
	   quarter 
FROM category 
CROSS JOIN calendar
ORDER BY 2;

SELECT * FROM calendar CROSS JOIN category;
SELECT * FROM calendar JOIN category;
SELECT * FROM calendar, category;
SELECT * FROM calendar, category WHERE quarter == 'Q2';

CREATE TABLE report AS
SELECT quarter, category_name FROM calendar, category;

SELECT * FROM report;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS calendar;
DROP TABLE IF EXISTS report;