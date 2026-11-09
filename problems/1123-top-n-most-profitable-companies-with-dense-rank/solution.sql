with cte as (
    select company, SUM(profit) as profit , dense_rank() over(order by sum(profit) desc) as rnk 
    from sales
    group by company)

select company, profit
from cte
where rnk <= 3
order by profit desc, company