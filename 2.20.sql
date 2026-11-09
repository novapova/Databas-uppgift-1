select products.unit_price, (products.unit_price * 1.1)
from products
where products.supplier_id = 4;

select products.product_name, products.unit_price, suppliers.company_name
from products
inner join suppliers
on products.supplier_id = suppliers.supplier_id
where suppliers.company_name = 'Tokyo Traders';

update products
set unit_price = unit_price * 1.1
where supplier_id = 4;