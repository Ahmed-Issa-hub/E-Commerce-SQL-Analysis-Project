INSERT INTO customers (name, e_mail, country, created_at) VALUES
('Ahmed Ali', 'ahmed@example.com', 'Egypt', '2023-01-10'),
('Sara Youssef', 'sara@example.com', 'Egypt', '2023-02-15'),
('John Smith', 'john@example.com', 'USA', '2023-03-12'),
('Mona Gamal', 'mona@example.com', 'UAE', '2023-04-18'),
('Ali Zain', 'ali@example.com', 'Saudi Arabia', '2023-05-20');

INSERT INTO products (name, category, price, cost_price) VALUES
('Bluetooth Speaker', 'Electronics', 500.00, 300.00),
('Wireless Mouse', 'Electronics', 150.00, 80.00),
('T-shirt Black', 'Apparel', 200.00, 90.00),
('Running Shoes', 'Footwear', 700.00, 400.00),
('Coffee Mug', 'Home & Kitchen', 100.00, 40.00);

INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2023-06-01', 'delivered'),
(2, '2023-06-03', 'delivered'),
(3, '2023-06-05', 'cancelled'),
(4, '2023-06-06', 'delivered'),
(1, '2023-06-10', 'delivered');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 500.00),
(1, 5, 2, 100.00),
(2, 2, 1, 150.00),
(3, 3, 2, 200.00),
(4, 4, 1, 700.00),
(5, 3, 1, 200.00),
(5, 1, 1, 500.00);

INSERT INTO product_reviews (product_id, customer_id, rating, review_date, comment) VALUES
(1, 1, 5, '2023-06-02', 'Excellent sound quality!'),
(2, 2, 4, '2023-06-04', 'Works smoothly.'),
(4, 4, 3, '2023-06-07', 'Comfortable but a bit tight.'),
(3, 1, 5, '2023-06-11', 'Great quality for the price.');

INSERT INTO returns (order_item_id, reason, return_date) VALUES
(4, 'Wrong size', '2023-06-06'),
(6, 'Didn’t like the material', '2023-06-12');