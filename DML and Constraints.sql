-- New database and table creation

create database company_db;
use company_db;
show databases;
 
 -- Not null key constraint 
 
create table employee(empid int not null, firstname varchar(10), lastname varchar(10));
insert into employee values(null, 'Ravi','Kumar',25);
insert into employee values('01', null,'Kumar',25);

-- Unique key constraint

create table employee1(empid int not null, firstname varchar(10), lastname varchar(10), unique(empid));

insert into employee1 values(null,'Omkar','Joshi');
insert into employee1 values(01,'Omkar','Joshi');
insert into employee1 values(01,'Omkar','Joshi'); -- Duplicate entry will not be recorded
insert into employee1 values(02,'Omkar','Joshi');

truncate employee1;
select * from employee1;
desc employee1;
drop table employee1;
-- Check Constraint while creating table

create table employee2 (empid int not null, firstname varchar(10), lastname varchar(10), empage int, check(empage>20));

insert into employee2 values (01, 'Omkar','Joshi',19);
insert into employee2 values (01, 'Omkar','Joshi',21);

-- Create a salary column in employee2 table
alter table employee2 add column salary int;
-- drop this column and add again using diffrent method for applying check constraint
alter table employee2 drop column salary;

-- add salary column apply check constraint in table 
alter table employee2 add column salary int, add check(salary>=5000);

insert into employee2 values (01,'Lucky','Jangid',21,4000);
insert into employee2 values (02,'Rohan','Gurav',21,10000);
insert into employee2 values (03,'Yash','Ayare',23,7000);

select * from employee2;

-- This command checks the table properties and constraint name
show create table employee2; 

-- Remove the check constraint from the salary
alter table employee2 drop check employee2_chk_2; -- Command to drop the check constraint

-- Apply Notnull, check and primary key constraints
-- Primary key is a key which is notnull as well as unique
create table employee3 (empid int not null, firstname varchar(10),lastname varchar(10), empage int, check (empage>20),primary key(empid));

-- Create a table and only applye primary key constraints to empid
create table employee4 (empid int primary key, firstname varchar (10), lastname varchar (10), empage int, salary int);
insert into employee4 values(null,'Ram','Kumar',20);

-- To allow naming and defining a check constraint on mulitple columns
alter table employee4 add constraint chk_empage_salary check(empage>20 AND salary >=5000);

insert into employee4 values (01,'Omkar','Joshi',21,10000);
show create table employee4;

-- Drop the constraint from employee4
alter table employee4 drop check chk_empage_salary;

-- Drop the employee 4 table
drop table employee4;

-- Default constraint : Set a default value for a column if no other
-- Value specified
create table employee5 (empid int not null, firstname varchar(10), lastname varchar (10), empdept varchar(10) default 'MCA');

desc employee5;
insert into employee5 (empid,firstname,lastname) values (01,'Omkar','Joshi'),(02,'Yogesh','Gawande');
select * from employee5;
delete from employee5 where firstname='A';

