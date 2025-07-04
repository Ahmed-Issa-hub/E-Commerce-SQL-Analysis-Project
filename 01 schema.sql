CREATE DATABASE ecommerce;
use ecommerce;
create table customers (
	Customer_id SERIAL primary key,
    Name varchar(100),
	E_mail varchar(100),
    Country varchar(100),
    Created_at DATE
    );
    
create table Products  (
	Product_id  SERIAL primary key,
    Name varchar(100),
	Category  varchar(100),
    Price  decimal(10,2),
    Cost_price  decimal(10,2)
    );

create table Orders (
	Order_id serial primary key,
    Customer_id int references customers(Customer_id),
    Order_date date, 
    Status varchar(20) -- delivered, cancelled, returned, etc.
    );
    
create table Order_items (
	Order_item_id serial primary key,
    Order_id int references Orders(Order_id),
    Product_id int references Products(Product_id),
    quantity int,
    Unit_price decimal (10,2)
    );
    
CREATE TABLE Product_reviews (
    Review_id SERIAL PRIMARY KEY,
    Product_id INT REFERENCES products(product_id),
    Customer_id INT REFERENCES customers(customer_id),
    Rating INT CHECK (rating BETWEEN 1 AND 5),
    Review_date DATE,
    comment TEXT
);

CREATE TABLE Returns (
    Return_id SERIAL PRIMARY KEY,
    Order_item_id INT REFERENCES order_items(order_item_id),
    Reason TEXT,
    Return_date DATE
);






