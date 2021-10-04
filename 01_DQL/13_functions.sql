SELECT CategoryName, Description FROM Category;
SELECT UPPER(CategoryName), Description FROM Category;
SELECT UPPER(CategoryName) AS CategoryName, Description FROM Category;

SELECT LOWER(CategoryName) AS CategoryName, Description FROM Category;

SELECT LENGTH(CategoryName) AS LenCategoryName, Description FROM Category;
SELECT CategoryName, LENGTH(CategoryName) AS LenCategoryName, Description FROM Category;

SELECT TYPEOF(3);
SELECT TYPEOF(3.5); 
SELECT TYPEOF('python'); 
SELECT TYPEOF(NULL); 

SELECT CategoryName, Description FROM Category;
SELECT CategoryName, TYPEOF(CategoryName), Description FROM Category;