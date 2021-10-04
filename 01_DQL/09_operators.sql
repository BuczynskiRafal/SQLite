SELECT * FROM Customer;

-- AND
SELECT * FROM Customer WHERE Country == 'UK';
SELECT * FROM Customer WHERE Country == 'UK' AND City == 'London';

-- OR
SELECT * FROM Customer WHERE Country == 'UK' OR Country == 'Italy';

SELECT * FROM Customer WHERE Country == 'UK' OR Country == 'Italy' OR Country == 'Poland';

-- IN
SELECT * FROM Customer WHERE Country IN ('UK', 'Italy', 'Poland');

-- NOT IN
SELECT * FROM Customer WHERE Country NOT IN ('UK', 'Italy', 'Poland');

SELECT * FROM Customer WHERE Country != 'UK' AND Country != 'Italy' AND Country != 'Poland';

-- BETWEEN
SELECT ProductName, UnitPrice FROM Product;

SELECT ProductName, UnitPrice FROM Product WHERE UnitPrice >= 15 AND UnitPrice <= 20;
SELECT ProductName, UnitPrice FROM Product WHERE UnitPrice BETWEEN 15 AND 20;

-- NOT BETWEEN
SELECT ProductName, UnitPrice FROM Product WHERE UnitPrice NOT BETWEEN 15 AND 20;

-- IS NULL
SELECT * FROM Customer;
SELECT * FROM Customer WHERE Fax IS NULL;

-- IS NOT NULL
SELECT * FROM Customer WHERE Fax IS NOT NULL;