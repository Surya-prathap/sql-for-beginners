-- Write a SQL query below --

select c.email,ci.product_id
from customers c
join carts ca
on c.id = ca.customer_id
join cart_items ci
on ca.id = ci.cart_id
where c.is_active = true
order by email asc;