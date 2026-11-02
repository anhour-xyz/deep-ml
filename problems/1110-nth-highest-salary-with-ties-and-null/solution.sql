-- your query
SELECT salary as nth_salary
from employee
group by salary
order by salary desc
offset 2
limit 1
