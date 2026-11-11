select products.unit_price, suppliers.company_name, products.supplier_id
from products
inner join suppliers ON (suppliers.supplier_id = products.supplier_id)
where suppliers.company_name = 'Tokyo Traders';

update products
set unit_price = unit_price * 1.1
where supplier_id = 4;

