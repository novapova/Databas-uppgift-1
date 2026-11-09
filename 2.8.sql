select products.product_name, products.unit_price
from products;

alter table products
add inc_price float(4);

update products
set inc_price = unit_price * 1.07;