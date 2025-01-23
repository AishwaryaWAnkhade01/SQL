-- JOINS-- 
-- Create Customer table
create database Customer_info;
use customer_info;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    Country VARCHAR(100)
);

-- Insert data into Customer table
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Country)
VALUES 
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');

-- Create Order table
CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert data into Order table
INSERT INTO `Order` (OrderID, CustomerID, OrderDate)
VALUES 
    (1, 1, '2023-01-01'),
    (2, 2, '2023-02-15'),
    (3, 3, '2023-03-20');
