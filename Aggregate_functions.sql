show databases;
use pratical;
create table teachers(
id int not null,
teacher_name  varchar(50),
gender char(2),
department varchar(50),
salary decimal(10,2),
city varchar(50),
primary key(id));
--
desc teachers;
-- inserting the values 
insert into teachers values(101, 'Rakesh', 'M', 'computer science', 55000,'Hyderabad'),
(102, 'Ravali', 'F', 'medical', 40000, 'Bengulore'),
(103, 'Revanth', 'M', 'data science', 50000, 'chennai'),
(104, 'Rajukumar', 'M', 'electroni',35000, 'chennai'),
(105, 'Rani', 'F', 'computer science', 55000, 'hyderabad'),
(106, 'Raju', 'M', 'medical', 40000, 'delhi'),
(107, 'Sujatha', 'F', 'data science', 50000, 'delhi'),
(108, 'Sunitha', 'F', 'electronic',  35000, 'bengulore'),
(109, 'Shashank', 'M', 'computer science',  55000, 'hyderabad'),
(110, 'Rama', 'F', 'medical', 40000, 'chennai'),
(111, 'Nagaraju', 'M', 'computer science', 55000, 'mumbai');
--
select * 
from teachers;
--
-- Aggregate Functions
-- groupby
select gender, count(*)
from teachers
group by gender;
--
select department, count(*)
from teachers
group by department;
--
select department, avg(salary)
from teachers
group by department;
--
select department,gender, avg(salary)
from teachers
group by department, gender
order by avg(salary) asc;
--
-- count
select count(*)
from teachers;
--
select count(department)
from teachers
where gender = 'm';
--
-- min & max
select min(salary)
from teachers
where department = 'electronic';
--
select max(salary)
from teachers
where gender = 'F';
--
-- average
select round(avg(salary),2)
from teachers
where department = 'data science';
