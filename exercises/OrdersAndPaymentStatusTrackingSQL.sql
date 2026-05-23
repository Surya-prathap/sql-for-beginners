-- Write a SQL query below --

select o.id as order_id,c.email,round(o.total_amount,2) as total_amount,payment_method
from orders o
join customers c
on o.customer_id = c.id
join payments p
on o.id = p.order_id
where o.ordered_at between '2023-10-01' and '2023-10-31'
order by o.id asc;