SELECT * FROM Product;

SELECT * FROM Product WHERE UnitsInStock > 0;

SELECT Id FROM Product WHERE UnitsInStock > 0;

SELECT * FROM OrderDetail;

SELECT * FROM OrderDetail WHERE ProductId IN (SELECT Id FROM Product WHERE UnitsInStock > 0);

SELECT * 
FROM OrderDetail 
WHERE ProductId IN 
	(SELECT Id 
	FROM Product 
	WHERE UnitsInStock > 0);
	
SELECT * FROM Customer;	

SELECT * FROM Customer WHERE Country LIKE 'U%';

SELECT Country FROM Customer WHERE Country LIKE 'U%';
SELECT DISTINCT Country FROM Customer WHERE Country LIKE 'U%';

SELECT Id FROM Customer WHERE Country LIKE 'U%';

SELECT * FROM "Order";

SELECT * 
FROM "Order"
WHERE CustomerId IN 
	(SELECT Id 
	FROM Customer 
	WHERE Country LIKE 'U%');