select products.product_name, suppliers.company_name
from products
inner join suppliers ON (suppliers.supplier_id = products.supplier_id)
where product_name = 'Gravad lax'