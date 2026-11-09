select products.product_name, categories.category_name
from products
inner join categories ON (categories.category_id = products.category_id)
where product_name = 'Lakkalikööri'