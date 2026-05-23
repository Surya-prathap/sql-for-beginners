-- Write a SQL query below --

select c.first_name,c.last_name,round(sum(o.total_amount),2) as total_revenue
from customers c
join orders o
on c.id = o.customer_id
group by c.id,c.first_name,c.last_name
order by total_revenue desc;