-- Write a SQL query below --

select count(*) as total
from orders
where order_status = 'Delivered';
