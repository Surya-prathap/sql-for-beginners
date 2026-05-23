-- Write a SQL query below --

select id as order_id,round(total_amount,2) as total_amount, FORMATDATETIME(ordered_at, 'yyyy-MM-dd HH:mm:ss') AS ordered_at
from orders
where order_status = 'Delivered' and total_amount > 150.00
order by ordered_at desc; 