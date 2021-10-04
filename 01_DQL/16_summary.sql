SELECT * FROM "Order";
SELECT * FROM `Order`;
SELECT * FROM [Order];

SELECT CustomerId FROM "Order";
SELECT DISTINCT CustomerId FROM "Order";

SELECT CustomerId, COUNT(CustomerId) FROM "Order" GROUP BY CustomerId;
SELECT CustomerId, COUNT(CustomerId) AS NumOfOrders FROM "Order" GROUP BY CustomerId;

SELECT CustomerId, 
	   COUNT(CustomerId) AS NumOfOrders 
FROM "Order" 
GROUP BY CustomerId
ORDER BY NumOfOrders DESC;

SELECT CustomerId, 
	   COUNT(CustomerId) AS NumOfOrders 
FROM "Order" 
GROUP BY CustomerId
ORDER BY NumOfOrders DESC
LIMIT 10;

SELECT CustomerId, 
	   COUNT(CustomerId) AS NumOfOrders 
FROM "Order" 
GROUP BY CustomerId
ORDER BY NumOfOrders DESC
LIMIT 5 OFFSET 3;

SELECT * FROM OrderDetail;
SELECT OrderId, COUNT(OrderId) AS NumOfProducts FROM OrderDetail GROUP BY OrderId;

SELECT OrderId, 
	   COUNT(OrderId) AS NumOfProducts 
FROM OrderDetail 
GROUP BY OrderId
ORDER BY NumOfProducts DESC;

SELECT *
FROM OrderDetail 
WHERE OrderId == 11077;