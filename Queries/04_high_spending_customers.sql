-- Calculate the average spending per customer for Delivered ordersو Compare each customer to the overall average, and show only those above average.

with customer_spending as (
select 
c.name as customer_name,
avg(i.quantity * i.unit_price) as average_customer_spending
from orders o
join customers c on c.customer_id = o.customer_id
join order_items i on i.order_id = o.order_id
group by customer_name),

overall_avg  as (
select 
avg(average_customer_spending) as global_avg
from customer_spending)

select *,   (cs.average_customer_spending - oa.global_avg) as difference_from_avg
from customer_spending cs
join overall_avg  oa
where cs.average_customer_spending > oa.global_avg
order by difference_from_avg desc;