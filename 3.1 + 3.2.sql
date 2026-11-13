create or replace procedure fiveP_increase(p_categoryID smallint)
language plpgsql
as $$
begin
update products
set unit_price = unit_price * 1.05
where products.category_id = p_categoryID;
end;
$$;

call fiveP_increase(1::smallint);

select products.unit_price, products.category_id, product_name
from products
order by category_id, product_name;