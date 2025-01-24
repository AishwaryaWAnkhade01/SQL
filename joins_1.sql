-- JOINS-- 
create database joins;
use joins;
-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    Country VARCHAR(100)
);

-- Insert Data into Customer Table
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Country)
VALUES 
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico'),
    (4, 'Blauer See Delikatessen', 'Hanna Moos', 'Germany'); -- This customer has no orders

-- Create Order Table
CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert Data into Order Table
INSERT INTO `Order` (OrderID, CustomerID, OrderDate)
VALUES 
    (1, 1, '2024-01-10'),
    (2, 2, '2024-02-15'),
    (3, 3, '2024-03-20'),
    (4, 4, '2024-04-05'); -- This order has no matching customer

