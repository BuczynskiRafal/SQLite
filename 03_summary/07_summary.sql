-- Wyświetl liczbę niepustych rekordów w tabeli Order.

-- Wyświetl liczbę niepustych rekordów w tabeli Order. Przypisz podany alias do
-- kolumny wynikowej: NumberOfRows

-- Wyznacz liczbę unikalnych klientów (kolumna CustomerId) w tabeli Order i przypisz
-- podany alias: NumberOfCustomers

-- Wyznacz dwie wartości:
--     * liczbę niepustych wartości dla kolumny CustomerId w tabeli Order
--     * liczbę unikalnych klientów (kolumna CustomerId) w tabeli Order
-- i przypisz do nich aliasy:
--     * NumberOfRows
--     * NumberOfCustomers

-- Podane jest poniższe zapytanie:
SELECT COUNT(*) AS NumberOfRows,
       COUNT(DISTINCT CustomerId) AS NumberOfCustomers 
FROM "Order";
-- Dodaj trzecią kolumnę, która wyliczy procent unikalnych klientów w tabeli Order.
-- Przypisz do niej alias: PctOfUniqueCustomers
-- Zwróć uwagę na dzielenie przez liczbę całkowitą. Aby zamienić liczbę całkowitą 
-- na zmiennoprzecinkową można ją pomnożyć przez 1.0. 

-- Wyznacz trzy wartości:
--     * liczbę rekordów w tabeli Order
--     * liczbę niepustych wartości kolumny ShippedDate
--     * procent brakujących danych w kolumnie ShippedDate
-- i przypisz odpowiednio aliasy:
-- 	   * NumberOfRows
-- 	   * NumberOfNonMissingShippedDate
-- 	   * PctOfMissingShippedDate

-- Wyznacz najstarszą datę zamówienia (kolumna OrderDate) z tabeli Order.

-- Wyznacz najnowszą datę zamówienia (kolumna OrderDate) z tabeli Order.

-- Wyznacz średnią wartość dla kolumny Freight w tabeli Order.