
select department, employee,score, row_number() over(partition by department order by score desc, employee) as rn, rank()over(partition by department order by score desc) as rnk, dense_rank()over(partition by department order by score desc) as dense_rnk
from scores
order by department, score desc, employee


