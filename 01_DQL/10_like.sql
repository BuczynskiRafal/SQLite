SELECT CompanyName, ContactName, Country FROM Customer;

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName == 'Bon app';
SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName == 'bon app';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName LIKE 'B%';
SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName LIKE 'b%';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName LIKE 'Bl%';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName LIKE '%en';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName NOT LIKE '%en';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE CompanyName NOT LIKE '%en';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE CompanyName LIKE '%en' OR CompanyName LIKE '%es';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE CompanyName LIKE '%co%';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE Country LIKE '___';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE Country LIKE '__';

SELECT CompanyName, 
	   ContactName, 
	   Country 
FROM Customer 
WHERE ContactName LIKE 'J__n %';
