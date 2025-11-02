show databases;
use pratical;
show tables;
create table transations(
transation_id int not null,
product_name varchar(50),
transation_date int,
amount int ); 
alter table transations 
modify transation_date datetime;
desc transations;
--
INSERT INTO transations VALUES
(1, 'abc', '2015-01-01 00:00:00', 10000),
(2, 'def', '2015-01-02 00:00:00', 30000),
(3, 'ghi', '2015-01-03 00:00:00', 20000),
(4, 'jkl', '2015-01-04 00:00:00', 15000),
(5, 'lmn', '2015-01-05 00:00:00', 10000),
(6, 'opq', '2015-01-06 00:00:00', 40000),
(7, 'rst', '2015-01-07 00:00:00', 35000);
select * from transations;
--
-- datediff operation
select product_name, datediff(sysdate(),transation_date) as difference
from transations;
--
-- date_formate operations 
select transation_date, date_format(transation_date, '%Y')
from transations;
--
select transation_date, date_format(transation_date, '%M')
from transations;
--
select transation_date, date_format(transation_date, '%D')
from transations;
-- changing the format
select transation_date, date_format(transation_date, '%Y/%m/%d')
from transations;
--
-- day operation
select  day(transation_date) as day_column, transation_date
from transations;
--
-- Quater operation
select  quarter(transation_date) , transation_date
from transations;
--
-- addday() operation(day)
select transation_date, adddate(transation_date, interval 10 day) as change_date
from transations;
-- (month)
select transation_date, adddate(transation_date, interval 11 month) as change_date
from transations;
-- (year)
select transation_date, adddate(transation_date, interval 10 year) as change_date
from transations;
-- subdate() day
select transation_date, subdate(transation_date, interval 10 day) as change_date
from transations;
-- (month)
select transation_date, subdate(transation_date, interval 10 month) as change_date
from transations;
-- (year)
select transation_date, subdate(transation_date, interval 10 year) as change_date
from transations;
