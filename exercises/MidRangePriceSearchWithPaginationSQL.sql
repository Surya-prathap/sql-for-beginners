-- Write a SQL query below --

select name,round(price,2) as price
from products
where is_active = true and price between 40.00 and 100.00
order by price desc
limit 2,3;