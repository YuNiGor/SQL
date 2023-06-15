-- Определить, сколько покупок было совершено в каждый месяц. 
-- Отсортировать строки в порядке возрастания количества покупок. 
-- Вывести два поля - номер месяца и количество покупок:
SELECT MONTH(ODATE) AS month, COUNT(*) AS purchase_count
FROM ORDERS
GROUP BY MONTH(ODATE)
ORDER BY purchase_count ASC;

-- Определить, в какой месяц было совершено больше всего покупок. 
-- Вывести два поля - номер месяца и количество покупок:
SELECT MONTH(ODATE) AS month, COUNT(*) AS purchase_count
FROM ORDERS
GROUP BY MONTH(ODATE)
ORDER BY purchase_count DESC
LIMIT 1;
