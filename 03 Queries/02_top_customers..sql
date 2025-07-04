-- Display customer name and total amount spent. Amount = unit_price * quantity. Include only Delivered orders. Sort from highest to lowest.

select 
c.name as customer_name,
sum(i.quantity * i.unit_price) as Amount_spent
from orders o 
join order_items i on i.order_id = o.order_id
join customers c  on c.Customer_id = o.customer_id
where status = 'Delivered'
group by customer_name
order by Amount_spent desc;