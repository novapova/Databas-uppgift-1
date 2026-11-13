
create view products_nw AS
select products.product_name, categories.category_name, products.unit_price
from products
left join categories ON (categories.category_id = products.category_id)
order by product_name;

select * from products_nw;

