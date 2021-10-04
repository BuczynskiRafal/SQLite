SELECT ProductName, UnitPrice FROM Product;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice LIMIT 5;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice LIMIT 5 OFFSET 3;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice DESC LIMIT 1 OFFSET 4;

SELECT ProductName, UnitPrice FROM Product ORDER BY UnitPrice DESC;

SELECT ProductName, 
	   UnitPrice 
FROM Product 
ORDER BY UnitPrice DESC 
LIMIT 1 OFFSET 4;