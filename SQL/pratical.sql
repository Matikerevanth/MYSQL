show databases;
drop database into_sql;
create database pratical;
use pratical;

-- DDL commends(create, alter, drop)
-- CREATE OPERATIONS
-- creating the table 
create table employee(
emp_id int not null,
emp_name varchar(50),
emp_location varchar(50)
);
select * from employee;
alter table employee add constraint pk_emp primary key(emp_id);
-- desc to show table 
desc employee;

-- creating another table 
create table department(
dept_id int not null,
dept_name varchar(50),
dept_salary decimal,
emp_id int,
foreign key(emp_id) references employee(emp_id),
primary key(dept_id)
);
desc department;

-- inserting values employee table 
insert into employee values(1, 'revanth', 'hyderabad'),
(2,'Rohith', 'bengulore'),
(3, 'nagaraju', 'warangal'),
(4, 'rajukumar', 'pune');
select * from employee;

-- inserting values to department table 
insert into department values(101, 'data scientist', 50000, 1),
(102, 'data analytics', 45000, 2),
(103, 'data engineering', 60000, 3),
(104, 'software developer', 90000, 4);
select * from department;

-- ALTER OPERATIONS
alter table employee 
-- add operatin
add column age int ;

-- drop operation
alter table employee
drop column age;

-- rename operation
alter table department 
rename  column dept_salary to dept_salaries;
select * from department;

-- constraints operation 
alter table employee add constraint pk_emp primary key(emp_id);




