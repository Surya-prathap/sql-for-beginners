-- Write a SQL query below --

select name,round(price,2) as price,round(rating,1) as rating
from products
where name like '%Monitor%'
order by price desc;