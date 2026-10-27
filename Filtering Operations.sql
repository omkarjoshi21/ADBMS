-- Filtering data operators - WHERE, SELECT, AND, OR, NOT, IN, NOT IN, BETWEEN, LIKE, LIMIT, IS NULL

create database organization;
use organization;

create table employee(
empid int not null primary key,
firstname varchar(15),
lastname varchar(15),
gender char, 
role varchar(15),
dept varchar(15),
managerid varchar(10));

desc employee;

insert into employee (empid,firstname,lastname,gender,role,dept,managerid) values
(1,'Omkar','Joshi','M','Founder','IT','M01'),
(2,'Yogesh','Gawande','M','Co-Founder','Finance','M02'),
(3,'Rohan','Gurav','M','Employee','HR','M03'),
(4,'Yash','Ayare','M','Manager','Finance','M04'),
(5,'Lucky','Jangid','M','HR','HR','M05');

-- Distinct Clause is the SELECT 

select distinct dept from employee order by dept;
select distinct role from employee order by role;

-- AND operator is the logical operator that combines two or more boolean expressions and returns 1,0, NULL.
-- The AND operator is used for filtering data with the while clause;

select * from employee where role='Co-founder' and dept='Finance';

/* OR operator : OR operator is a logical opertor that combines two Boolean expressions and returns 1 ( true )
if either of the expression is true.
The OR operator is used for filtering the data with the where clause.*/

select * from employee where role='Manager' or role='Founder';
select * from employee where role='Manager' or dept='HR';

-- IN Operator

select * from employee where role in('Founder','Manager');
select * from employee where role in('TM','CEO');

-- NOT IN operator

select * from employee where role not in('President','Manager');
select * from employee where role not in('Founder','Co-founder');

-- BETWEEN Operator

alter table employee add column experience int;

update employee set experience=8 where empid=1;
update employee set experience=10 where empid=2;
update employee set experience=12 where empid=3;
update employee set experience=6 where empid=4;
update employee set experience=5 where empid=5;

select * from employee;
 
select * from employee where experience between 6 and 10; -- Betwwen Operator
select * from employee where experience=8 or experience=10; -- OR operator

-- LIKE operator 

select * from employee where lastname like 'J%';
select * from employee where firstname like 'Y%';


-- LIMIT Operator : Used to limit the number of rows returned

select * from employee;
select * from employee order by experience limit 4; -- Order by <column_name> shows the ascending data and limit tells the number of rows we need

-- IS NULL 

insert into employee values (7,'Asha',null,'F','President','HR','',null);

select * from employee where managerid is null;
select * from employee where lastname is null;

select * from employee where lastname is not null;