-- Найти среднюю зарплату по компании:
SELECT AVG(salary) AS average_salary FROM employees;

-- Найти общее количество департаментов:
SELECT COUNT(*) AS department_count FROM departments;

-- Найти количество департаментов, в которых никто не работает:
SELECT COUNT(*) AS empty_departments
FROM departments
LEFT JOIN employees
    ON departments.department_id = employees.department_id
WHERE employees.department_id IS NULL;

-- Найти среднюю зарплату в департаменте с id 90:
SELECT AVG(salary) AS average_salary FROM employees WHERE department_id = 90;

-- Найти самую большую зарплату среди сотрудников, работающих в департаментах с id 70 и 80:
SELECT MAX(salary) AS max_salary FROM employees WHERE department_id IN (70, 80);
