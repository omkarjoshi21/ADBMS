create database user;
show databases;

use user;

create table customer (Custid int, custname varchar(15), City varchar(10), product varchar(15), price int);
desc customer;

insert into customer (Custid,custname,City,product,price) values
(1,'Omkar','Hingoli','product1',1200),
(2,'Yogesh','Akola','product2',1500),
(3,'Nikhil','Pune','product3',1000);

-- Apply primary key on customer

alter table customer add primary key (Custid);

-- View speicifc columns
select Custid,custname,city from customer;

-- View one specific record only
select * from customer where custid=3;

-- View specific records 
select * from customer where custid in (1,3);

-- Creating a Clone Table
create table CloneTable as select * from customer;
select * from CloneTable;
drop table CloneTable;

-- Select specific records using where clause ( condition )
select custname, product, price from customer where price>1000;

select * from customer where city='hingoli';

-- Sorting data order by single column
select * from customer order by city asc;

-- Sorting Data order by multiple columns
select * from customer order by price,city;

select * from customer order by city desc, price asc;

-- Uppercase and Lowercase Function
select upper(custname), lower(product) from customer 
where custid<3;

select upper(custname), lower(product) from customer;


-- Add column in table
alter table customer add column lastname varchar(20);

-- Update the details in a record 
update customer set Lastname='Sharma' where custid=1;
update customer set Lastname='Rao' where custid=2;

-- Concat two columns
select concat (custname,' ',lastname) as Fullname from customer;

-- Use of SUBSTR and INSTR functions

select substr(custname,1,3) from customer;
select substr(custname,0,1) from customer;
select substr(custname,1,0) from customer;

select instr(custname,'a') as position from customer;

select instr(custname,'a') as instring from customer;

insert into customer values (4,'Ankita','Nanded','product4',2000);

select substr(custname,1,3), instr(custname,'a') from customer where custid<3;

-- Date and time function

select now();
select now() as current_datetime;
alter table customer add column date date;
update customer set date='2024-2-20' where custid=1;
update customer set date='2024/2/20' where custid=2;
update customer set date='2024-8-20' where custid=3;

select * from customer;

