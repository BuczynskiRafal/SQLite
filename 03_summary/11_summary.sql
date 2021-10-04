-- Z tabeli Product wyświetl kolumnę UnitsInStock. Dodatkowo dodaj drugą kolumnę
-- o nazwie UnitsInStockLevel, która podzieli wartości w kolumnie UnitsInStock na
-- cztery poziomy:
--     * UnitsInStock == 0 -> 'none'
--     * UnitsInStock < 20 -> 'low'
--     * UnitsInStock pomiędzy 20 a 50 -> 'medium'
--     * UnitsInStock powyżej 50 -> 'high'

-- Wykorzystując zapytanie z powyższego ćwiczenia pogrupuj dane w kolumnie Product 
-- na poziomie UnitsInStockLevel i policz liczbę wystąpień dla każdej grupy.