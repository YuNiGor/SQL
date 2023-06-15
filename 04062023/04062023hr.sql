-- Вывести названия департаментов, в которых никто не работает

SELECT department_name
FROM departments
WHERE department_id NOT IN (SELECT DISTINCT department_id FROM employees);


-- Выведите названия департаментов, в которых менеджеры зарабатывают больше 10000

SELECT d.department_name
FROM departments d
JOIN employees e ON d.manager_id = e.employee_id
WHERE e.salary > 10000;


-- Вывести имя, фамилию, название департамента и название должности сотрудника

SELECT e.first_name, e.last_name, d.department_name, j.job_title
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id;


-- Вывести имя, фамилию и зарплату тех сотрудников, которые работают в городах Oxford и San Francisco

SELECT employees.first_name, employees.last_name, employees.salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city IN ('Oxford', 'San Francisco');



