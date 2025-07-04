-- Calculate the number of customers per countryو Display the country with the highest count.

select 
country,
count(customer_id) as total_customers
from customers
group by Country
order by total_customers desc;