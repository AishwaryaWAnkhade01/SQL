-- --- -Data Definition Language--  
-- -- CREATE-- 
-- Create database Employee_Info;
-- use employee_info;
-- create table emp (
-- name VARCHAR (50),
-- emp_id Int not null primary key ,
-- salary decimal (10,2)
-- );

-- create table Customer(
-- name VARCHAR (50),
-- cust_id INT Not null unique primary KEY ,
-- rate_score Decimal (10,2) not null 
-- );

-- create table Service (
-- Service_name VARCHAR (50),
-- address TEXT (100)
-- );


-- -- 2. ALTER--
--  Alter table Service 
--  add Feedback DECIMAL(10,2)
--  

-- use enployee_info;
-- select * from customer_service;

create database CountryCode ;
use CountryCode ;
create table city(
ID int,
NAME VARCHAR(17),
COUNTRYCODE BIGINT,
DISTRICT VARCHAR(20),
POPULATION int
);
select*from city;
 

