-- Write a SQL query below --

select p.name as product_name,c.name as category_name,ifnull(sum(o.quantity),0) as total_sold
from products p
left join categories c
on p.category_id = c.id
left join order_items o
on p.id = o.product_id
group by p.name,c.name
order by total_sold desc;