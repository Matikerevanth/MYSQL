show databases;
use pratical;
show tables;
-- joins
-- customer table (table1)
create table customers(
customerID int not null,
customername varchar(50),
contactname varchar(50),
adderss varchar(50),
city varchar(50),
postalcode varchar(10),
country varchar(50),
primary key(customerID)
);

-- orders tables(tables2)
create table orders(
orderid int not null,
customerID int not null,
EmployeeId int ,
orderdata datetime,
shipperid int,
primary key(orderid)
);

-- inserting the records table 1
insert into  customers values(101, 'Revanth', 'Revanth', 'Hyderabad', 'Hyderabad', '1a6730', 'India'),
(102, 'Nagaraju', 'Nagaraju', 'Warangal', 'Warangal', '1a6731', 'India'),
(103, 'Rajukumar', 'Rajukumar', 'Hyderabad', 'Hyderabad', '1a6732', 'India'),
(104, 'Rohith', 'Rohith', 'America', 'America', '1a6733', 'America'),
(105, 'Saketh', 'Saketh', 'Hong Kong', 'Hong Kong', '1a6734', 'Hong Kong'),
(106, 'Papi', 'Papi', 'America', 'America', '1a6735', 'America');

-- insering the records in table 2 
insert into orders values(201, 101, 401, sysdate(), 6730),
(202, 103, 402, sysdate()-10, 6730),
(203, 104, 403, sysdate()-20, 6730),
(204, 105, 404, sysdate()-30, 6730);


select * from customers;
select * from orders;

-- LEFT JOIN 
select * 
from customers as c 
left join orders as o
on c.customerID = o.customerID;

--
select c.customerID, c.customername, c.country, o.orderdata, o.customerID
from customers as c 
left join orders as o
on c.customerID = o.customerID;

-- Right Join 
select * 
from customers as c 
right join  orders as o
on c.customerID = o.customerID;
-- we are add records to the right table to show the difference
insert into orders values(207, 107, 406, sysdate()-10, 6730);
select * from orders;
--
select c.customerID, c.customername, c.country, o.orderid, o.orderdata, o.customerID
from customers as c
right join orders as o 
on c.customerID = o.customerID;

-- INNER JOIN 
select * 
from customers as c
inner join orders as o
on c.customerID =o.customerID;
--
select c.customerID, c.customername, c.city,o.orderdata,o.EmployeeId
from customers as c
inner join orders as o
on c.customerID =o.customerID;

-- left outer join
select c.customerID, c.customername, c.city,o.orderdata,o.EmployeeId
from customers as c
left outer join orders as o
on c.customerID =o.customerID;
-- right outer join 
select c.customerID, c.customername, c.city,o.orderdata,o.EmployeeId
from customers as c
right outer join  orders as o
on c.customerID =o.customerID;

--  full OUTER JOIN 
select c.customerID, c.customername, c.city,o.orderdata,o.EmployeeId
from customers as c
left outer join orders as o
on c.customerID =o.customerID
UNION
select c.customerID, c.customername, c.city,o.orderdata,o.EmployeeId
from customers as c
right outer join  orders as o
on c.customerID =o.customerID;

-- CROSS JOIN 
select *
from customers as c 
cross join orders as o ;
--
select c.customername, o.EmployeeId, o.customerID
from customers as c 
cross join orders as o ;










