-- Write a SQL query below --

select concat(c.first_name,' ',c.last_name) as full_name,c.email,a.city
from customers c
join addresses a
on c.id = a.customer_id
where c.is_active = true and a.is_default = true
order by c.first_name asc;