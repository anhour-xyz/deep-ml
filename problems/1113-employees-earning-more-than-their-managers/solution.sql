-- your query
SELECT e1.name
from employees e1
join employees e2 on e2.id = e1.manager_id
where e1.salary > e2.salary

