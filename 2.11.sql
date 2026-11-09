select * from products
where (products.units_in_stock + products.units_on_order < products.reorder_level)