-- learning SQL joins-- 
-- 1.Inner JOIN-- 
-- returns only matching records deom both the table -- 
-- example-- 
create database innerjoins ;
use innerjoins;

create table employees(
id int primary key auto_increment ,
name varchar (50) not null  ,
department_id int);

create table departments (
id int primary key auto_increment,
department_name varchar (50) not null);

INSERT INTO employees (id, name, department_id) VALUES 
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL);

INSERT INTO departments (id, department_name) VALUES 
(101, 'HR'), 
(102, 'IT'), 
(103, 'Sales'), 
(104, 'Finance');

select * from departments;

-- select employees.name  as employees_name , 
-- departments.department_name as department_name
-- from employees
-- Inner Join departments
--  on employees.department_id=departments.id;


--  SELECT employees.name, departments.department_name
-- FROM employees
-- INNER JOIN departments ON employees.department_id = departments.id;
-- ALTER TABLE employees MODIFY name VARCHAR(50) DEFAULT '';
-- INSERT INTO employees (emp_salary)
-- VALUES
-- (1500),
-- (2500),
-- (2000),
-- (1300);
select employees.name as employees_name,
	   departments.department_name as deaprtment_name ,
       employees.emp_salary as Salary 
       from employees
inner join departments on employees.department_id=departments.id;
select* from employees;
alter table employees
drop column emp_salary ;
SET SQL_SAFE_UPDATES = 0;

alter table employees
add column emp_salary int  ;

UPDATE employees
SET department_id = 101
WHERE name = 'Alice';

UPDATE employees
SET department_id = 102
WHERE name = 'Bob';

UPDATE employees
SET department_id = 103
WHERE name = 'Charlie';







