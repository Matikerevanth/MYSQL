show databases;
use pratical;
create table student(
first_name varchar(50) not null,
last_name varchar(50) not null,
id int not null,
age char(2) not null,
city varchar(50) not null,
state varchar(50) not null
);
desc student;
select * from student;
alter table student add primary key(id);

-- inserting the values to these table 
insert into student values ('Revanth', 'Matike', 6730, 23, 'Hyderabad', 'Telengana'),
('Nagaraju', 'Malluri', 6731, 22, 'Warangal', 'Telengana'),
('Rohith', 'Adde', 6715, 24, 'Bengulor', 'AndraPradesh'),
('Rajukumar', 'Bakka', 6725, 22, 'Vizag', 'AndraPradesh');  

-- SELECT OPERATIONS
select * 
from student;

-- (first_name & last_name) operation
select first_name as firstname, last_name as lastname
from student;

-- (count operation) to get number of records
select count(*) from student;
select count(id) from student;
select count(id) as no_of_records
from student;

-- (filter query operations)
select first_name , last_name , city 
from student;
-- (where operation) 
select first_name , last_name, city
from student
where id = 6725;
--
select first_name, last_name, state
from student
where id in (6725, 6730);
--
select * 
from student
where age <=23;
--
select first_name , last_name, city, age
from student
where age >=23;

-- (wildcards operations) first character is 'R'
select * 
from student 
where first_name like 'R%';
-- last character is 'R'
Select first_name, age
from student
where first_name like '%R';
-- words that contain 'R' init 
select * 
from student 
where last_name like '%a%';
--
select first_name, city
from student
where city like 'h%d';

-- (Between And operation)
select * 
from student 
where age between 22 and 23;

-- (OR operation) 
select * 
from student 
where age = 22 or age = 23;
-- (IN operation)
select * 
from student 
where age in (22,23);



-- 

