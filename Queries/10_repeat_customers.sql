-- Count orders by customer and filter for customers with ≥2 purchases.

select 
name,
count(order_id) as number_of_orders
from customers
join orders on orders.Customer_id = customers.Customer_id
group by name
having number_of_orders >= 2
order by number_of_orders;