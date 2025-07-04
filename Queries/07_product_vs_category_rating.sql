-- For each product, calculate its average rating; then calculate the average rating per category finally display each product with its rating compared to its category's average rating - preferably using CTEs or subqueries.

with average_rating as (
select 
p.name as product_name,
category,
avg(pr.rating) avg_rate
from products p
join product_reviews pr on p.Product_id = pr.Product_id
group by product_name, category),

with category_average_rating as(
select 
category,
avg(rating) over (partition by category) as category_rate 
from product_reviews
join products on products.Product_id = product_reviews.Product_id )

select * 
from average_rating
cross join category_average_rating on average_rating.category = category_average_rating.category;