
begin;

update products
set unit_price = 30.1
where product_name = 'Chai';

update products
set unit_price = 22.67
where product_name = 'Tofu';

select products.product_name, products.unit_price
from products
where product_name in ('Chai', 'Tofu');

rollback;

select products.product_name, products.unit_price
from products
where product_name in ('Chai', 'Tofu');


