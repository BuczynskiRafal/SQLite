SELECT ProductName, UnitPrice FROM Product;

SELECT ProductName, UnitPrice FROM Product LIMIT 10;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice LIMIT 10;
SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice DESC LIMIT 10;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice LIMIT 1;
SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice DESC LIMIT 1;

SELECT ProductName, 
	   UnitPrice 
FROM Product 
ORDER BY UnitPrice DESC 
LIMIT 10;