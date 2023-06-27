-- Найдите имя и фамилию пользователей, у которых нет заказов:
SELECT name, lastname
FROM customers
WHERE id NOT IN (SELECT DISTINCT customerid FROM orders);

-- Найдите название товаров, которые ни разу не заказывали:
SELECT title
FROM products
WHERE id NOT IN (SELECT DISTINCT productid FROM orders);

-- Найдите название товаров, которые ни разу не заказывали онлайн:
SELECT title
FROM products
WHERE id NOT IN (SELECT DISTINCT productid FROM orders WHERE ordertype = 'online');

-- Найдите имя и фамилию покупателя, который сделал самый дорогой заказ:
SELECT c.name, c.lastname
FROM customers c
INNER JOIN orders o ON c.id = o.customerid
WHERE o.id = (SELECT id FROM orders ORDER BY product_count * (SELECT price FROM products WHERE id = o.productid) DESC LIMIT 1);
