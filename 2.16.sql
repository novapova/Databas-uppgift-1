select sum(order_details.unit_price) from order_details
inner join orders ON (orders.order_id = order_details.order_id)
where order_date = '1996-12-12'