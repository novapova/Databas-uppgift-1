
create or replace view products_nw AS
select products.product_name, categories.category_name, products.unit_price
from products
left join categories ON (categories.category_id = products.category_id)
order by product_name;

select * from products_nw;




drop view if exists products_price_SEK;
create view products_price_SEK AS
select products.product_name, categories.category_name, products.unit_price, round((products.unit_price * 10)::numeric, 2) as unit_price_sek
from products
left join categories ON (categories.category_id = products.category_id)
order by product_name;

select * from products_price_SEK;


