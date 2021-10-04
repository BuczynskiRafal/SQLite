SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions
FROM website.sales_012021 
GROUP BY employee_id
ORDER BY total_sales DESC;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions
FROM website.sales_012021 
GROUP BY employee_id
HAVING total_sales > 50.0
ORDER BY total_sales DESC;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions
FROM website.sales_012021 
WHERE employee_id != 431
GROUP BY employee_id
HAVING total_sales > 50.0
ORDER BY total_sales DESC;

SELECT employee_id, 
	   SUM(amount) AS total_sales,
	   COUNT(employee_id) AS transactions
FROM website.sales_012021 
WHERE employee_id != 325
GROUP BY employee_id
HAVING total_sales > 50.0
ORDER BY total_sales DESC;