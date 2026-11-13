
begin;

update products
set unit_price = 38.83
where product_name = 'Tunnbröd';

update products
set points = 10000
where product_name = 'Novas goda kaviar';

select products.product_name, products.unit_price
from products
where product_name in ('Tunnbröd', 'Novas goda kaviar');

rollback;

select products.product_name, products.unit_price
from products
where product_name in ('Chai', 'Tofu');

