-- Show product name and number of returns. Only products with 2 or more returns.

with no_of_returns as(
select 
order_item_id, count(order_item_id) as return_times
from returns
group by order_item_id)

select 
p.name product_name,
nor.return_times
from order_items oi
join no_of_returns nor on nor.order_item_id = oi.Order_item_id
join products p on p.Product_id = oi.Product_id
where return_times >= 2;