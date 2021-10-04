-- Zapytanie do tabeli Employee
SELECT * FROM Employee;

SELECT * FROM Employee ORDER BY FirstName;
SELECT * FROM Employee ORDER BY FirstName ASC;
SELECT * FROM Employee ORDER BY FirstName DESC;

SELECT * FROM Employee ORDER BY Title;
SELECT * FROM Employee ORDER BY Title, FirstName;
SELECT * FROM Employee ORDER BY Title ASC, FirstName ASC;
SELECT * FROM Employee ORDER BY Title ASC, FirstName DESC;

SELECT Title, FirstName, LastName FROM Employee ORDER BY Title ASC, FirstName DESC;
SELECT Title, FirstName, LastName FROM Employee ORDER BY 1 ASC, 2 DESC;

SELECT Title, 
	   FirstName, 
	   LastName 
FROM Employee 
ORDER BY Title ASC, 
	     FirstName DESC;

SELECT * FROM Product;
SELECT * FROM Product ORDER BY UnitPrice;
SELECT * FROM Product ORDER BY UnitPrice ASC;
SELECT * FROM Product ORDER BY UnitPrice DESC;

SELECT * FROM Customer;
SELECT * FROM Customer ORDER BY Fax;
SELECT CompanyName, ContactName, Fax FROM Customer ORDER BY Fax;
SELECT CompanyName, ContactName, Fax FROM Customer ORDER BY Fax DESC;

SELECT CompanyName, ContactName, Fax FROM Customer ORDER BY Fax DESC NULLS FIRST;
SELECT CompanyName, ContactName, Fax FROM Customer ORDER BY Fax ASC NULLS LAST;
