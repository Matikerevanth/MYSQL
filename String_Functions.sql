show databases;
use pratical;
show tables;
select * from student;
-- string functions operations
-- concat operation 
select concat(first_name,' ',last_name) as full_name
from student;
-- substring
select substr('MatikeRevanth', 7, 7);
--
select substr(state, 6,7), id , first_name
from student
where id = 6715;
--
-- uppercase  and 1owercare operations 
select * from department;
select dept_name, upper(dept_name), lower(dept_name)
from department;
--
-- character_length oprtation
select  dept_name,char_length(dept_name) as length 
from department;
-- without spaces (trim function)
select  dept_name,char_length(trim(dept_name)) as length 
from department;
--
-- mid operation
select mid(state, 6,7), id , first_name
from student
where id = 6715;
-- 
-- comapresion of both substring() and mid()
select substr(state, 6,7), mid(state, 6,7)
from student;




