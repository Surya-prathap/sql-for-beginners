-- Write a SQL query below --

select c.first_name,c.last_name,count(o.id) as order_count
from customers c
join orders o
on c.id = o.customer_id
group by c.id,c.first_name,c.last_name
order by order_count desc;