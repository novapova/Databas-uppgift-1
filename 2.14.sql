select products.product_name, suppliers.company_name
from products
inner join order_details on products.product_id = order_details.product_id
left join suppliers on products.supplier_id = suppliers.supplier_id
where order_details.order_id = 10249;
