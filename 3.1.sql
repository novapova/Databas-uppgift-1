create procedure fiveP_increase()
language plpgsql
as $$
begin
update products
set unit_price = unit_price * 1.5;
end;
$$;

call fiveP_increase();

select products.unit_price
from products
