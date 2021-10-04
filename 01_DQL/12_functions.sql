SELECT * FROM Product;

SELECT COUNT(*) FROM Product;
SELECT COUNT(1) FROM Product;
SELECT COUNT(*) AS TotalRows FROM Product;

SELECT SupplierId FROM Product;
SELECT COUNT(SupplierId) FROM Product;
SELECT COUNT(DISTINCT SupplierId) FROM Product;
SELECT COUNT(DISTINCT SupplierId) AS NumOfSuppliers FROM Product;

SELECT * FROM Customer;
SELECT Fax FROM Customer;
SELECT COUNT(Fax) FROM Customer;
SELECT COUNT(*) FROM Customer;

SELECT UnitPrice FROM Product;
SELECT SUM(UnitPrice) FROM Product;
SELECT SUM(UnitPrice) AS TotalSum FROM Product;

SELECT AVG(UnitPrice) AS AvgPrice FROM Product;
SELECT AVG(DISTINCT UnitPrice) AS AvgPrice FROM Product;

SELECT MIN(UnitPrice) AS MinPrice FROM Product;
SELECT MAX(UnitPrice) AS MaxPrice FROM Product;