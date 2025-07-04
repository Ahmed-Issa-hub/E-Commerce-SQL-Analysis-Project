-- For each product, calculate: quantity sold, total revenue (unit_price * quantity), total cost (cost_price * quantity), profit margin = revenue - cost. Exclude non-Delivered orders. Sort by highest profit to lowest.

select 
 p.name product_name,
 sum(i.quantity) as quantity,
 sum(i.quantity * i.unit_price) as revenue,
 sum(p.cost_price * i.quantity) as Total_cost,
 sum(i.quantity * i.unit_price) - sum(p.cost_price * i.quantity) as profit_margin
from order_items i
join products p on i.product_id = p.product_id
join orders o on i.order_id = o.order_id
where o.status = 'delivered'
group by product_name
order by profit_margin desc;