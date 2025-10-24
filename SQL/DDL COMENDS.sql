show databases;
use pratical;
 show tables;
 select * from department;
 select * from employee;
 alter table employee add column age int;
 update employee 
 set age = case emp_id
 when 1 then 23
 when 2 then 24
 when 3 then 22 
 when 4 then 22 
 end 
 where emp_id in (1,2,3,4);
 
 create table employe_detials(
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 title varchar(40) not null,
 age int not null,
 salary decimal ,
 primary key(first_name)
 );
 desc employe_detials;
 select * from employe_detials;
 
 -- alter operations (add operation)
 alter table employe_detials
 add column location varchar(50);
 -- (drop operation)
 alter table employe_detials
 drop column title;
 -- (rename operation)
 alter table employe_detials
 rename column salary to emp_salary;
 
 
 drop table employe_detials;
 create database revanth;
 drop database revanth;
 show databases;
 
 