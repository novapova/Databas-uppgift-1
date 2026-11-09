
select products.unit_price, (products.unit_price * 1.2)
from products
where category_id = 4;

update products
set unit_price = unit_price * 1.2
where category_id = 4