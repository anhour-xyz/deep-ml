with cte as (
    select department, name, salary, dense_rank()over(partition by department order by salary desc) as rnk
from employees
)

select * 
from cte
where rnk <= 3
order by department, salary, name