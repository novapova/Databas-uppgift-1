select products.product_name, categories.category_name, sum(order_details.quantity)
from products
left join categories ON (categories.category_id = products.category_id)
left join order_details ON products.product_id = order_details.product_id
group by products.product_name, categories.category_name
order by products.product_name;
