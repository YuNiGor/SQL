-- Напишите запрос, который вернет выборку full join, используя таблицы CUSTOMERS и ORDERS (по ключу CUSTID).
-- В выборке должно присутствовать два атрибута — cname, orderid.

SELECT CNAME, ORDER_ID
FROM CUSTOMERS
FULL JOIN ORDERS USING (CUST_ID);


-- Для каждого сотрудника выведите разницу между коммисионными его босса и его собственными. Если у сотрудника босса нет, выведите NULL.
-- Вывести : sname, difference.

SELECT e.SNAME AS sname, 
       (b.COMM - e.COMM) AS difference
FROM SELLERS e
LEFT JOIN SELLERS b ON e.BOSS_ID = b.SELL_ID
LIMIT 0, 30;


-- Выведите пары покупателей и обслуживших их продавцов из одного города.
-- Вывести: sname, cname, city

SELECT s.SNAME AS sname, c.CNAME AS cname, c.CITY AS city
FROM CUSTOMERS c
JOIN SELLERS s ON c.CITY = s.CITY
LIMIT 0, 30;








