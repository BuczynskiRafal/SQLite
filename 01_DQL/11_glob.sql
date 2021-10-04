SELECT CompanyName, ContactName, Country FROM Customer;

SELECT CompanyName, ContactName, Country FROM Customer WHERE ContactName GLOB 'An*';
SELECT CompanyName, ContactName, Country FROM Customer WHERE ContactName GLOB 'an*';

SELECT CompanyName, ContactName, Country FROM Customer WHERE ContactName GLOB 'An? *';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName GLOB '[A-D]*';

SELECT CompanyName, ContactName, Country FROM Customer WHERE CompanyName GLOB '[^A-D]*';



