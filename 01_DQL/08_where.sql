SELECT * FROM Customer;

SELECT * FROM Customer WHERE Country == 'Poland';
SELECT * FROM Customer WHERE Country == 'USA';
SELECT * FROM Customer WHERE Country = 'USA';

SELECT DISTINCT Region FROM Customer;

SELECT * FROM Customer WHERE Region == 'Scandinavia';

SELECT ProductName, UnitPrice FROM Product;

SELECT ProductName, UnitPrice FROM Product WHERE UnitPrice > 40;

SELECT ProductName, UnitPrice FROM Product WHERE UnitPrice > 40 ORDER BY UnitPrice;

SELECT ProductName, UnitPrice, UnitsInStock FROM Product;

SELECT ProductName, UnitPrice, UnitsInStock FROM Product WHERE UnitsInStock == 0;

SELECT ProductName, UnitPrice FROM Product WHERE UnitsInStock == 0;

SELECT ProductName, UnitPrice FROM Product WHERE UnitsInStock != 0;
SELECT ProductName, UnitPrice FROM Product WHERE UnitsInStock <> 0;
