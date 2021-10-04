-- Utworzenie tabeli 
CREATE TABLE website.sales_012021 (
    id          INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    amount      REAL    NOT NULL
);

-- Wstawienie kilku rekordów do tabeli
INSERT INTO website.sales_012021 (employee_id, amount)
VALUES (325, 109.0),
       (335, 9.89),
       (336, 40.0),
       (325, 210.0),
       (336, 39.50),
       (431, 15.99),
       (325, 10.99),
       (431, 32.00);
	   
-- Wyświetlenie tabeli	   
SELECT * FROM website.sales_012021;   

SELECT * FROM website.sales_012021 GROUP BY employee_id;

SELECT employee_id FROM website.sales_012021 GROUP BY employee_id;
SELECT employee_id, SUM(amount) FROM website.sales_012021 GROUP BY employee_id;
SELECT employee_id, SUM(amount) AS total_sales FROM website.sales_012021 GROUP BY employee_id;

SELECT employee_id, 
	   SUM(amount) AS total_sales 
FROM website.sales_012021 
GROUP BY employee_id;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions,
	   AVG(amount) AS avg_amount
FROM website.sales_012021 
GROUP BY employee_id;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions,
	   AVG(amount) AS avg_amount,
	   MIN(amount) AS min_amount,
	   MAX(amount) AS max_amount
FROM website.sales_012021 
GROUP BY employee_id;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions,
	   AVG(amount) AS avg_amount,
	   MIN(amount) AS min_amount,
	   MAX(amount) AS max_amount
FROM website.sales_012021 
GROUP BY employee_id
ORDER BY employee_id;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions,
	   AVG(amount) AS avg_amount,
	   MIN(amount) AS min_amount,
	   MAX(amount) AS max_amount
FROM website.sales_012021 
GROUP BY employee_id
ORDER BY total_sales;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions,
	   AVG(amount) AS avg_amount,
	   MIN(amount) AS min_amount,
	   MAX(amount) AS max_amount
FROM website.sales_012021 
GROUP BY employee_id
ORDER BY total_sales DESC;