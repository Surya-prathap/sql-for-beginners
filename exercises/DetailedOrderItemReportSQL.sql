-- Write a SQL query below --

select o.order_id,p.name as product_name,o.quantity,round(o.price,2) as price
from order_items o
join products p
on o.product_id = p.id
where quantity > 1 
order by order_id asc;