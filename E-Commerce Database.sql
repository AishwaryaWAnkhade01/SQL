-- Create Database-- 
create database amazon;
Use amazon;
-- create tables into database-- 
create table Users( 
user_id INT auto_increment PRIMARY KEY ,
name VARCHAR (50) NOT NULL ,
email VARCHAR(100) UNIQUE NOT NULL ,
address TEXT ,
signup_date DATETIME DEFAULT current_timestamp 
);

create table Products(
product_id Int auto_increment PRIMARY KEY ,
name VARCHAR (100) NOT NULL ,
description TEXT,
price  DECIMAL(10,2) NOT NULL,
stock INT DEFAULT 0
);

Create table Orders(
order_id INT auto_increment PRIMARY KEY , 
user_id INT NOT NULL,
oder_date datetime default current_timestamp,
total_amount DECIMAL(10,2),
FOREIGN KEY (user_id) references Users (user_id)
);
CREATE TABLE OrderDetails(
oder_detail_id INT auto_increment PRIMARY KEY,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL ,
subtotal DECIMAL (10,2),
foreign key (order_id) references Orders (order_id),
foreign key (product_id) references Products (product_id)
);
-- Insert data into Users table-- 
 INSERT INTO Users (name , email , address) VALUES
('Alice Johnson', 'alice@example.com', '123 Elm St'),
('Bob Smith', 'bob@example.com', '456 Oak St'),
('Charlie Brown', 'charlie@example.com', '789 Pine St');

-- Insert data into Products table-- 
INSERT INTO PRODUCTS (name , description , price, stock) VALUES
('Laptop', '15-inch laptop with 16GB RAM', 1200.00, 10),
('Smartphone', '64GB smartphone with 12MP camera', 800.00, 20),
('Headphones', 'Noise-canceling over-ear headphones', 150.00, 50);

-- Insert data into Orders table-- 
INSERT INTO Orders (user_id ,total_amount) VALUES
(1, 1350.00),
(2, 950.00);

-- Insert data into OrdersDetails table-- 

INSERT INTO OrderDetails (order_id , product_id,quantity , subtotal )Values
(1, 1, 1, 1200.00), -- 1 Laptop
(1, 3, 1, 150.00),  -- 1 Headphone
(2, 2, 1, 800.00),  -- 1 Smartphone
(2, 3, 1, 150.00);  -- 1 Headphone 

-- QUERIES-- 

-- fetch all users--  
SELECT * FROM USers;

-- fetch all Products-- 
SELECT * FROM Products;

-- fetch all Orders--  
SELECT *FROM Orders;

-- fetch all OrderDetails--  
SELECT * FROM OrderDetails;

SELECT * FROM OrderDetails WHERE subtotal >150 ;

SELECT * FROM Products where name='laptop';

-- WHERE CLAUSE-- 
SELECT * FROM Products WHERE stock > 10;

---- Get all orders with user details:-- 
SELECT o.order_id, u.name AS user_name, o.total_amount
FROM Orders o
JOIN Users u ON o.user_id = u.user_id;

--- -Get total sales by product:--  
SELECT p.name AS product_name, SUM(od.quantity) AS total_sold, SUM(od.subtotal) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.name;

 

 

