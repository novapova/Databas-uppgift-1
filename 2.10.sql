select * from products
where (products.units_in_stock < products.reorder_level)