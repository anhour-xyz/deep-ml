-- Employee name + department name
SELECT e.name, d.name AS department
FROM employees e
join departments d on d.id = e.department_id
