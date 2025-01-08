create database practiceDB;
use practiceDB;
create table employees(
ID int primary key ,
name VARCHAR (50),
Department varchar (30),
salary int,
ManagerID int
);
Insert into  employees (ID , name , Department , salary , ManagerID) VALUES 
(1, 'Alice', 'HR', 60000, NULL),
(2, 'Bob', 'IT', 70000, 1),
(3, 'Charlie', 'Sales', 50000, 2),
(4, 'David', 'Marketing', 65000, NULL),
(5, 'Eve', 'IT', 72000, 2),
(6, 'Frank', 'HR', 58000, 1),
(7, 'Grace', 'Sales', 52000, NULL);

create table products (
 productID int primary key ,
 productname varchar(30),
 category varchar(30),
 price decimal (10,2),
 stock INT
 );
INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(101, 'Laptop', 'Electronics', 1200.00, 15),
(102, 'Smartphone', 'Electronics', 800.00, 30),
(103, 'Tablet', 'Electronics', 300.00, 50),
(104, 'Desk', 'Furniture', 150.00, 5),
(105, 'Chair', 'Furniture', 100.00, 20);

create table Orders (
OrderID int primary key,
CustomerName varchar(50),
OrderDate date ,
status Varchar (20));

INSERT INTO Orders (OrderID, CustomerName, OrderDate, Status) VALUES
(1001, 'Alice', '2024-01-01', 'Shipped'),
(1002, 'Bob', '2024-01-03', 'Pending'),
(1003, 'Charlie', '2023-12-25', 'Cancelled'),
(1004, 'David', '2024-02-10', 'Shipped'),
(1005, 'Eve', '2024-01-15', 'Pending');

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    GPA DECIMAL(3, 2)
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, GPA) VALUES
(1, 'John', 'Doe', 20, 3.5),
(2, 'Jane', 'Smith', 22, 3.8),
(3, 'Michael', 'Brown', 19, 2.9),
(4, 'Emily', 'Davis', 21, 3.7),
(5, 'Chris', 'Wilson', 23, 3.0);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50),
    PhoneNumber int (10)
);
INSERT INTO Customers (CustomerID, CustomerName, City, Country, PhoneNumber) VALUES
(1, 'Alice Johnson', 'New York', 'USA', '1234567890'),
(2, 'Bob Williams', 'Los Angeles', 'USA', NULL),
(3, 'Charlie Smith', 'Chicago', 'USA', '9876543210'),
(4, 'David Brown', 'San Francisco', 'USA', '1112223334'),
(5, 'Eve Adams', 'Houston', 'USA', NULL);

-- SELECT * FROM PRODUCTS
-- 1. DISTINCT
-- Q1: Retrieve distinct City names from the Customers table.
-- Q2: Find the total number of distinct Job Titles in the Employees table.
-- Q3: Select distinct combinations of city and country from the customer table.
-- Q4: Retrieve distinct product categories from the Products table where the category is not null.
-- Q5: Find distinct customer names who have placed an order in the Orders table.

-- DISTINCT QUERY ANSWERS-- 
SELECT DISTINCT CITY FROM CUSTOMERS;
select * FROM employeeS;
SELECT DISTINCT DEPARTMENT FROM EMPLOYEES ;
SELECT DISTINCT city, country FROM customers;
select distinct category from products where category is not Null ;
SELECT DISTINCT CustomerName FROM Orders;
-- *************************************************************************************************
-- 2. WHERE
-- -- Q1: Select all columns from the Products table where the Price is greater than 100.
-- -- Q2: Retrieve employeesname from the Employees table who work in the 'Marketing' department.
-- -- Q3: Select orders from the Orders table where the OrderDate is after '2024-01-01'.
-- -- Q4: Find all customers from the Customers table whose City is 'New York'.
-- -- Q5: Retrieve products from the Products table where Stock is less than 50 and Price is greater than 500.

select * from products where price>100;
select name from employees where department="marketing";
select orderid from orders where orderdate > "2024-01-01";
select * from customers where city ="New York";
select * from products ;
-- select * from products where stock <50 and price>500;
select productname , stock , price from products where stock<50 and price>500;
-- *******************************************************************************************************-- 
-- 3. ORDER BY
-- Q1: Retrieve all employees from the Employees table and order them by name in descending order.
-- Q2: Select all products from the Products table and order them by Price in descending order.
-- Q3: Retrieve orders from the Orders table and sort them by OrderDate and then by CustomerID.
-- Q4: Select all students from the Students table and order them by GPA in descending order.
-- Q5: Retrieve all rows from the product table and order by category, price in ascending order.

select * from employees;
select name from employees order by name DESC;
select * from products order by price ASC;
select * from orders order by orderdate , customername ;
select * from orders;
select * from students order by GPA DESC;
select * from products;
select * from products order by category , price ASC ;
-- *******************************************************************************************************-- 
-- 4. AND / OR / NOT
-- Q1: Retrieve all employees from the Employees table where Salary is greater than 60000 and Department is 'IT'.
-- Q2: Select all products from the Products table where Price is greater than 1000 or Stock is less than 10.
-- Q3: Retrieve orders from the Orders table where the OrderDate is before '2023-01-01' and Status is not 'Shipped'.
-- Q4: Select all students from the Students table who are either from 'New York' or 'Los Angeles'.
-- Q5: Retrieve customers from the Customers table where the City is not 'San Francisco' and Country is 'USA'.
use practiceDB;
select * from employees where salary>60000 and department ="IT";
select * from products where price >1000  or stock<10;
select * from orders where orderdate<"2023-01-01" and status!= "shipped";
select * from students ;
 ALTER TABLE Students
ADD COLUMN city VARCHAR(255);
UPDATE Students
SET city = 'San Francisco'
WHERE StudentID = 1;

UPDATE Students
SET city = 'New Jersey'
WHERE StudentID = 2;

UPDATE Students
SET city = 'New York'
WHERE StudentID = 3;

UPDATE Students
SET city = 'Francisco'
WHERE StudentID = 4;

UPDATE Students
SET city = 'New Jersey'
WHERE StudentID = 5;
select * from students;
use practiceDB;
SELECT *
FROM Students
WHERE city IN ('New York', 'Los Angeles');
-- Q5: Retrieve all rows from the product table and order by category, price in ascending order.
select * from products order by  category , price ASC;
-- *******************************************************************************************************
-- 5. INSERT INTO
-- Q1: Insert a new product into the Products table with the following values: ('P1001', 'Laptop', 800, 50).
-- Q2: Insert a new employee into the Employees table with appropriate values for `ID, Name, Department, and Salary.
-- Q3: Insert a new order into the Orders table for a customer with CustomerID = 101.
-- Q4: Insert a new row into the Students table with only Name and Age, leaving GPA as null.
-- Q5: Insert multiple rows into the Books table using a single INSERT INTO statement.
use practiceDB;
insert into products  (productid , productname,category,stock,price)values ('106', 'Laptop',"Electronics" ,'800', '50');
select * from employees;
-- insert into employees ('','joice','HR','8000');--  