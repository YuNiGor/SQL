SELECT department_id, MAX(IF(salary > 10000, 1, 0)) AS has_high_earning_employee
FROM employees
GROUP BY department_id;

SELECT department_id, MIN(IF(salary > 10000, 1, 0)) AS all_employees_high_earning
FROM employees
GROUP BY department_id;

-- Оператор MAX возвращает максимальное значение из указанного столбца или выражения. Он используется для нахождения наибольшего значения в наборе данных.

-- Оператор MIN возвращает минимальное значение из указанного столбца или выражения. Он используется для нахождения наименьшего значения в наборе данных.

-- Таким образом, оператор MAX и оператор MIN позволяют найти максимальное и минимальное значение в столбце или выражении соответственно.