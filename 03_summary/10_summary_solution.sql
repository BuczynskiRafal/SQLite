-- Pogrupuj dane z tabeli Order na poziomie CustomerId i wyznacz dla każdego klienta
-- liczbę zamównień.
SELECT CustomerId,
       COUNT(*) AS NumOfOrders
FROM "Order"
GROUP BY CustomerId;

-- Pogrupuj dane z tabeli Order na poziomie CustomerId i wyznacz dla każdego klienta
-- liczbę zamównień. Wynik posortuj malejąco po liczbie zamównień. 
SELECT CustomerId,
       COUNT(*) AS NumOfOrders
FROM "Order"
GROUP BY CustomerId
ORDER BY NumOfOrders DESC;

-- Pogrupuj dane z tabeli Order na poziomie OrderDate i wyznacz dla każdej daty
-- liczbę zamównień. Wynik posortuj malejąco po liczbie zamównień i ogranicz do
-- 10 pierwszych rekordów.
SELECT OrderDate,
       COUNT(*) AS NumOfOrders
FROM "Order"
GROUP BY OrderDate
ORDER BY NumOfOrders DESC
LIMIT 10;

-- Pogrupuj dane z tabeli Order na poziomie ShipCountry i wyznacz dla każdego kraju
-- liczbę zamównień. W wyniku pozostaw kraje, które mają więcej niż 50 zamówień.
-- Wynik posortuj malejąco po liczbie zamównień. 
SELECT ShipCountry,
       COUNT(*) AS NumOfOrders
FROM "Order"
GROUP BY ShipCountry
HAVING NumOfOrders > 50
ORDER BY NumOfOrders DESC;

-- Pogrupuj dane z tabeli Order na poziomie ShipCountry oraz ShipCity i wyznacz 
-- dla każdej pary kraj <-> miasto liczbę zamównień. Wynik posortuj po malejącej
-- liczbie zamówień.
SELECT ShipCountry,
       ShipCity,
       COUNT(*) AS NumOfOrders
FROM "Order"
GROUP BY ShipCountry, ShipCity
ORDER BY NumOfOrders DESC;

-- Pogrupuj dane z tabeli Order na poziomie ShipCountry i wyznacz średnią wartość
-- dla kolumny Freight. Wynik posortuj malejąco po średniej wartości tej kolumny.
SELECT ShipCountry,
       AVG(Freight)
FROM "Order"
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC;