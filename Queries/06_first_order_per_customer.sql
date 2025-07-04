-- Using Window Functions, retrieve: order_id customer_id order_date And indicate whether this is the customer's first order, You can use ROW_NUMBER() or RANK().

select 
order_id,
customer_id,
order_date,
row_number() over (partition by customer_id order by order_date asc)
from orders;