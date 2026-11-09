select products.product_name, (products.units_in_stock * products.unit_price) as lagervärde
from products;