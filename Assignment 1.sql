create database companydb;
use companydb;
create table employees (empid int primary key,empname varchar (20),salary int,joindate date);
create table departments(deptid int primary key, deptname varchar(20));
alter table employees add email varchar(100);
alter table departments add dept_loc varchar(100);
desc employees;
desc departments;

alter table employees add phone varchar(15) not null;
alter table employees modify empname varchar(100);
show create table employees;
alter table employees drop primary key;
alter table employees add primary key (empid);

-- Add foreign key between both tables

alter table employees add deptid int;
ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (deptid)
REFERENCES departments(deptid);

SHOW CREATE TABLE employees;

alter table employees rename column empname to employeename;
select * from employees;