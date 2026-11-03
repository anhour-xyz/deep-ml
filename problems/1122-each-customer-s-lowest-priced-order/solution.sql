-- your query
with cte as (
    SELECT order_id, customer_id, rank()over(partition by customer_id order by amount,order_id) as rnk, amount
    from orders 
)

select order_id, customer_id, amount
from cte
where rnk = 1
order by customer_id