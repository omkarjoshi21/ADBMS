create table Employee (
emp_id int,
emp_name varchar(50),
emp_salary int
);

insert into Employee ( emp_id, emp_name, emp_salary ) 
values 
(01,'Omkar',50000),
(02,'Yogesh',10000),
(03,'Nikhil',30000),
(04,'Yash',40000)

select * from Employee;

update Employee set emp_salary="80000" where emp_id=2;

delete from Employee where emp_id=2;