select * from employee_table;
-- insert operations 
select * 
from employee_table 
where emp_salary > 30000;
-- 
select * 
from employee_table 
where emp_age < 30;
--
select emp_name, emp_salary,emp_domain
from employee_table 
where emp_domain like '%programmer%';
--
select emp_name 
from employee_table 
where emp_name like '%kka';
--
select emp_name
from employee_table 
where emp_name = 'Revanth Matike';
--
select * 
from employee_table 
where emp_age >=32;
--
-- UPDATE OPERATIONS(single record updating)
select * from employee_table ;
set SQL_SAFE_UPDATES=0;
update employee_table 
set emp_domain = 'Seniro_Data Scientist'
where emp_name = 'Nagaraju Malluri';
-- (multiple records updating)
update employee_table 
set emp_domain = 'Senior_Programmer',
emp_age = 26 
where emp_name = 'Dirk Smith';
--
update employee_table
set emp_name = 'Weber-Williams'
where emp_name = 'Jonie Weber';
--
-- (one method to increse the age)
update employee_table
set emp_age = 27
where emp_name = 'Dirk Smith';
-- (another method)
update employee_table
set emp_age = emp_age+1
where emp_name = 'Dirk Smith';
--
update employee_table
set emp_salary = 50000
where emp_salary >= 45000;
--
update employee_table
set emp_salary = 40000
where emp_salary <= 35000;
--
update employee_table
set emp_domain = 'Developer_Programmer'
where emp_domain = 'senior_programmer';

-- DELETE operations
delete  from employee_table 
where emp_name='Dirk Smith';
select * from employee_table;

