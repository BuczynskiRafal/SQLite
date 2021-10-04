-- Wyświetl liczbę niepustych rekordów w tabeli Order.
SELECT COUNT(*) FROM "Order";

-- Wyświetl liczbę niepustych rekordów w tabeli Order. Przypisz podany alias do
-- kolumny wynikowej: NumberOfRows
SELECT COUNT(*) AS NumberOfRows FROM "Order";

-- Wyznacz liczbę unikalnych klientów (kolumna CustomerId) w tabeli Order i przypisz
-- podany alias: NumberOfCustomers
SELECT COUNT(DISTINCT CustomerId) AS NumberOfCustomers FROM "Order";

-- Wyznacz dwie wartości:
--     * liczbę niepustych wartości dla kolumny CustomerId w tabeli Order
--     * liczbę unikalnych klientów (kolumna CustomerId) w tabeli Order
-- i przypisz do nich aliasy:
--     * NumberOfRows
--     * NumberOfCustomers
SELECT COUNT(CustomerId) AS NumberOfRows,
       COUNT(DISTINCT CustomerId) AS NumberOfCustomers
FROM "Order";

-- Podane jest poniższe zapytanie:
SELECT COUNT(*) AS NumberOfRows,
       COUNT(DISTINCT CustomerId) AS NumberOfCustomers 
FROM "Order";
-- Dodaj trzecią kolumnę, która wyliczy procent unikalnych klientów w tabeli Order.
-- Przypisz do niej alias: PctOfUniqueCustomers
-- Zwróć uwagę na dzielenie przez liczbę całkowitą. Aby zamienić liczbę całkowitą 
-- na zmiennoprzecinkową można ją pomnożyć przez 1.0. 
SELECT COUNT(*) AS NumberOfRows,
       COUNT(DISTINCT CustomerId) AS NumberOfCustomers,
	   COUNT(DISTINCT CustomerId) / (COUNT(*) * 1.0) AS PctOfUniqueCustomers
FROM "Order";

-- Wyznacz trzy wartości:
--     * liczbę rekordów w tabeli Order
--     * liczbę niepustych wartości kolumny ShippedDate
--     * procent brakujących danych w kolumnie ShippedDate
-- i przypisz odpowiednio aliasy:
-- 	   * NumberOfRows
-- 	   * NumberOfNonMissingShippedDate
-- 	   * PctOfMissingShippedDate
SELECT COUNT(*) AS NumberOfRows,
       COUNT(ShippedDate) AS NumberOfNonMissingShippedDate,
	   (COUNT(*) - COUNT(ShippedDate)) / (COUNT(*) * 1.0) AS PctOfMissingShippedDate
FROM "Order";

-- Wyznacz najstarszą datę zamówienia (kolumna OrderDate) z tabeli Order.
SELECT MIN(OrderDate) FROM "Order";

-- Wyznacz najnowszą datę zamówienia (kolumna OrderDate) z tabeli Order.
SELECT MAX(OrderDate) FROM "Order";

-- Wyznacz średnią wartość dla kolumny Freight w tabeli Order.
SELECT AVG(Freight) FROM "Order";