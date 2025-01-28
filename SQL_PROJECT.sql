create database SQL_Project;
use SQL_Project;
create table retail_sales (
transactions_id	int primary key ,
sale_date date,	
sale_time time,
customer_id	int ,
gender varchar(10),
age int ,
category varchar(50),
quantity int,
price_per_unit float,
cogs float,
total_sale float
);


select * from retail_sales
limit 10;

-- count of total number of records-- 
select count(*)from retail_sales;

-- Finding Null value-- 
-- DATA CLEANING-- 

select * from retail_sales
where transactions_id is null
or
sale_date is null
or
sale_time is null
or
customer_id is null
or
gender is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;

-- to delete the null value -- 
-- delete from retail_sales 
-- where transactions_id is null
-- or
-- sale_date is null
-- or
-- sale_time is null
-- or
-- customer_id is null
-- or
-- gender is null
-- or
-- price_per_unit is null
-- or
-- cogs is null
-- or
-- total_sale is null;

-- DATA EXPLORATION-- 
-- 1.Total Number of Sales we have ?-- 
SELECT  COUNT(*) as total_sales
from retail_sales;

-- 2.How many unique customrs we have ?-- 
select count(distinct customer_id) as totalCustomers
from retail_sales;

-- 3.How many Categorys we have -- 
select count( distinct category)as categories
from retail_sales;
select distinct category from retail_sales;

-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
select * from retail_sales
where sale_date= '2022-11-05' ;

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- SELECT * FROM retail_sales 
-- WHERE category = 'clothing' 
-- AND FORMAT(sale_date, '%Y-%m') = '2022-11' 
-- AND quantity >=4;

SELECT * FROM retail_sales 
WHERE category = 'Clothing' 
AND sale_date BETWEEN '2022-11-01' AND '2022-11-30'
AND quantity >=3;

ALTER TABLE retail_sales 
CHANGE COLUMN quantiy quantity INT;
select * from retail_sales 
where category='clothing';

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select category ,sum(total_sale) from retail_sales as total_sale 
group by category ;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select avg(age) from retail_sales
where category='Beauty';






