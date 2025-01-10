-- Create a new database
CREATE DATABASE CompanyData;
USE CompanyData;

-- Create Employees table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(20),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into Employees table
INSERT INTO Employees (ID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Finance', 75000),
(3, 'Charlie', 'IT', 65000),
(4, 'Diana', 'HR', 55000),
(5, 'Eve', 'IT', 90000);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(101, 'Laptop', 'Electronics', 800, 50),
(102, 'Phone', 'Electronics', 500, 200),
(103, 'Chair', 'Furniture', 150, 75),
(104, 'Table', 'Furniture', 300, 30),
(105, 'Book', 'Books', 20, 500);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    Status VARCHAR(20)
);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerName, OrderDate, Status) VALUES
(201, 'John Doe', '2023-05-10', 'Shipped'),
(202, 'Jane Smith', '2024-01-15', 'Processing'),
(203, 'Emily Davis', '2024-04-20', 'Not Shipped'),
(204, 'Michael Brown', '2023-12-01', 'Shipped'),
(205, 'Sarah Wilson', '2024-02-05', 'Processing');

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Grade INT,
    Marks INT
);

-- Insert sample data into Students table
INSERT INTO Students (StudentID, Name, City, Grade, Marks) VALUES
(301, 'Tom', 'New York', 8, 85),
(302, 'Jerry', 'Los Angeles', 9, 78),
(303, 'Anna', 'Chicago', 10, 92),
(304, 'Sam', 'New York', 10, 88),
(305, 'Lucy', 'San Francisco', 8, 74);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    PublishedYear INT,
    Price DECIMAL(10, 2)
);

-- Insert sample data into Books table
INSERT INTO Books (BookID, Title, Author, PublishedYear, Price) VALUES
(401, 'Learn SQL', 'John Doe', 2020, 25.99),
(402, 'Mastering Python', 'Jane Smith', 2018, 30.50),
(403, 'Web Development Guide', 'Emily Davis', 2019, 20.00),
(404, 'Data Science Handbook', 'Michael Brown', 2021, 40.75),
(405, 'AI for Beginners', 'Sarah Wilson', 2022, 35.00);

-- Create the Cities table
CREATE TABLE Cities (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50),
    Population INT
);

-- Insert sample data into the Cities table
INSERT INTO Cities (CityID, CityName, Population) VALUES
(1, 'Tokyo', 37400068),
(2, 'New York', 8419600),
(3, 'Los Angeles', 3980400),
(4, 'Chicago', 2716000),
(5, 'Houston', 2328000),
(6, 'Phoenix', 1690000),
(7, 'Philadelphia', 1584200),
(8, 'San Antonio', 1547200),
(9, 'San Diego', 1423800),
(10, 'Dallas', 1343000);


-- 1. SELECT TOP Questions
-- Retrieve the top 5 highest-paid employees from the employees table.
-- Display the top 3 most recent orders from the orders table by orderdate.
-- Get the top 10 students with the highest marks in the students table.
-- Select the top 5 products with the lowest stock from the products table.
-- Show the top 7 cities with the highest population from the cities table.

select * from employees 
order by salary desc
limit 5;

select * from orders 
order by orderdate asc
limit 3;

select * from students 
order by marks desc
limit 10 ;  

select * from products 
order by stock asc
limit 5;

select * from cities 
order by population desc
limit 7;

-- 2.Aggregate Functions (MIN, MAX, COUNT, SUM, AVG) Questions
-- Find the minimum and maximum salary in the employees table.
-- Count the total number of orders in the orders table where the status is 'shipped'.
-- Calculate the average price of products in the products table.
-- Find the total stock of all products in the products table.
-- Count the distinct number of departments in the employees table.
use companydata;
SELECT MIN(salary) AS MinSalary, MAX(salary) AS MaxSalary
FROM employees;

select count(orderid)as totalorders
from orders
where status='shipped';

select avg(price) as averageprice
from products;

select sum(stock) as totalstocks
from products;

select count(distinct department )
from employees;

-- 1 Retrieve the product name and price from the products table, but display the column names as Product and Cost.
-- 2 Select the name and department columns from the employees table and display them as Employee Name and Dept.
-- 3 Show the total number of employees in each department from the employees table, using an alias for the count as Total Employees.
-- 4 Retrieve all orders from the orders table and display orderdate as Date of Order.
-- 5 Find the average salary in the employees table and display it as Average Salary.


select productname as product , price as cost
from products ;

select * from employees;
select name as employeename , department as Dept
from employees;

SELECT department, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY department;

select orderid, customername , orderdate  as " Date of Order", status
from orders;
select * from orders;

select avg(salary) from employees as AverageSalary;


