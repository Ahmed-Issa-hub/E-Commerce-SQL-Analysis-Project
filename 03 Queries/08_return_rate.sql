-- The count of orders/items that were returnedو The return rate = (number of returns ÷ total order items count)و Display the result as an approximate percentage

SELECT 
    (SELECT COUNT(*) FROM returns) AS returned_items,
    (SELECT COUNT(*) FROM order_items) AS total_items,
    ROUND(100 * (SELECT COUNT(*) FROM returns) / (SELECT COUNT(*) FROM order_items), 2) AS return_rate_percent;
