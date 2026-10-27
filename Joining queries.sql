-- Basic of Joining Queries
create database basicjoin;
use basicjoin;
create table employees(
eid int primary key,
ename varchar(50));

desc employees;

insert into employees ( eid,ename ) values
(101,'Omkar'),
(102,'Yogesh'),
(103,'Nikhil'),
(104,'Yash');

select * from employees;

create table projects(
projectid int primary key,
pname varchar(50),
eid int,
foreign key(eid)
references employees(eid));

desc projects;

insert into projects ( projectid,pname,eid ) values
(1,'Project A',101),
(2,'Project B',102),
(3,'Project C',101),
(4,'Project D',104);

select * from projects; 

insert into employees values (105,'Rohan');
insert into employees values (106,'Pratik');

-- Inner Join
-- Only matching records will display from employee and projevts table.

select * from employees;

insert into projects values(5,'Project E',105);
insert into projects values(6,'Project F',null);

-- inner join projects ON employees.eid=projects.eid;

-- Fetch employee name and project name they belong to

select e.ename,p.pname from employees e
right join projects p on e.eid = p.eid; 

select e.eid, e.ename,p.pname from employees e
left join projects p on e.eid=p.eid;

insert into projects values (8,'Project I',106);

-- Full outer join using union
-- display all matching and non matching data from both tables

select * from employees;

-- left join projects on employees.eid=projects.eid 
-- union 
-- select * from employees 
-- right join projects on employees.eid=projects.eid;

select employees.ename,projects.pname
from employees
left join projects
on employees.eid = projects.eid
where projects.eid is not null; 

select employees.ename,projects.pname
from employees
left join projects
on employees.eid = projects.eid
where projects.eid is null;
