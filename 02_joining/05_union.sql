DROP TABLE IF EXISTS sales_01_2021;
DROP TABLE IF EXISTS sales_02_2021;

CREATE TABLE sales_01_2021 (
    product_name TEXT NOT NULL,
    price REAL NOT NULL,
    quantity INTEGER NOT NULL
);

CREATE TABLE sales_02_2021 (
    product_name TEXT NOT NULL,
    price REAL NOT NULL,
    quantity INTEGER NOT NULL
);

INSERT INTO sales_01_2021 (product_name, price, quantity)
VALUES ('Programowanie obiektowe', 39.00, 1),
       ('Sieci neuronowe', 39.00, 2),
       ('Testy jednostkowe', 39.00, 3),
       ('Ścieżka Python Developer', 159.00, 1);
       
INSERT INTO sales_02_2021 (product_name, price, quantity)
VALUES ('Tensorflow + Keras', 39.00, 1),
       ('Sieci neuronowe', 39.00, 1),
       ('200+ Ćwiczeń - Python', 39.00, 3),
       ('Ścieżka Python Developer', 159.00, 1),
       ('Big Data, Hadoop', 39.00, 1),
	   ('Testy jednostkowe', 39.00, 3);
	   
SELECT * FROM sales_01_2021;
SELECT * FROM sales_02_2021;

SELECT * FROM sales_01_2021
UNION
SELECT * FROM sales_02_2021;	

SELECT product_name FROM sales_01_2021
UNION
SELECT product_name FROM sales_02_2021;   