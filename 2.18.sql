
select customers.company_name
from customers
left join orders on orders.customer_id = customers.customer_id
where orders.customer_id is null;

