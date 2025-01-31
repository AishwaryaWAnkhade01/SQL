-- Syntax for Inner join 
-- select column name 
-- from table A 
-- inner Join Table B
-- on Table A . col_name =Table B .clumn

create database paymment;
use paymment ;
create table Customers (
customer_id int,
adress_id int, 
first_name varchar (50),
last_name varchar(50)
);

INSERT INTO customers (customer_id, adress_id, first_name, last_name) VALUES
(1, 101, 'John', 'Doe'),
(2, 102, 'Jane', 'Smith'),
(3, 103, 'Alice', 'Brown'),
(4, 104, 'Bob', 'Johnson'),
(5, 105, 'Charlie', 'Williams');

CREATE TABLE PAyment (
customer_id int ,
 amount int , 
 mode varchar(50), 
 payment_date date
);
 INSERT INTO payment_record (customer_id, amount, mode, payment_date) VALUES
(1, 150.00, 'Credit Card', '2024-01-25'),
(2, 200.50, 'PayPal', '2024-01-26'),
(8, 75.25, 'Debit Card', '2024-01-27'),
(6, 300.00, 'Bank Transfer', '2024-01-28'),
(5, 50.75, 'Cash', '2024-01-29');
 alter table payment 
rename to payment_record;


select * from customers as c 
inner join payment_record as p 
on c.customer_id =p.customer_id
limit 5;

-- Incase you want to have specific columnn 
select c.first_name ,p.amount,p.mode
from customers as c
inner join payment_record as p 
on c.customer_id =p.customer_id
limit 5;

-- Left Join
select *
from customers as c
left join  payment_record as p 
on c.customer_id =p.customer_id;

-- right join
select *
from customers as c
right join  payment_record as p 
on c.customer_id =p.customer_id;

