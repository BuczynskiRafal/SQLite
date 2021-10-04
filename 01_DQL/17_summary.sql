SELECT * FROM OrderDetail;
SELECT *, UnitPrice * Quantity * (1 - Discount) AS TotalSale FROM OrderDetail;

SELECT OrderId,
	   SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalSale
FROM OrderDetail
GROUP BY OrderId;

SELECT OrderId,
	   SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalSale
FROM OrderDetail
GROUP BY OrderId
ORDER BY TotalSale DESC;

SELECT * FROM "Order";

SELECT ShipCountry, COUNT(ShipCountry) AS NumOfRows FROM "Order" GROUP BY ShipCountry;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows 
FROM "Order" 
GROUP BY ShipCountry
ORDER BY NumOfRows DESC;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows,
	   AVG(Freight) AS AvgFreight
FROM "Order" 
GROUP BY ShipCountry
ORDER BY AvgFreight DESC;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows,
	   AVG(Freight) AS AvgFreight,
	   MIN(Freight) AS MinFreight,
	   MAX(Freight) AS MaxFreight
FROM "Order" 
GROUP BY ShipCountry
ORDER BY AvgFreight DESC;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows,
	   AVG(Freight) AS AvgFreight,
	   MIN(Freight) AS MinFreight,
	   MAX(Freight) AS MaxFreight
FROM "Order" 
GROUP BY ShipCountry
HAVING MaxFreight > 300.0
ORDER BY AvgFreight DESC;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows,
	   AVG(Freight) AS AvgFreight,
	   MIN(Freight) AS MinFreight,
	   MAX(Freight) AS MaxFreight
FROM "Order" 
GROUP BY ShipCountry
HAVING MAX(Freight) > 300.0
ORDER BY AvgFreight DESC;

SELECT ShipCountry, 
	   COUNT(ShipCountry) AS NumOfRows,
	   AVG(Freight) AS AvgFreight,
	   MIN(Freight) AS MinFreight,
	   MAX(Freight) AS MaxFreight
FROM "Order" 
WHERE ShipCountry GLOB '[A-D]*'
GROUP BY ShipCountry
HAVING MaxFreight > 300.0
ORDER BY MaxFreight DESC;