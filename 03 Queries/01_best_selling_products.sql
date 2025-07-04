-- Display each product name and the total quantity sold. Exclude orders that aren't Delivered. Sort from highest to lowest

select p.name as Product_name, sum(quantity) as Total_sold
from order_items i 
join products p on i.Product_id = p.Product_id 
join orders o on i.order_id = o.order_id
where o.Status = 'delivered'
group by Product_name
order by Total_sold desc;