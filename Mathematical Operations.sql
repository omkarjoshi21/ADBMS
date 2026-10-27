-- Mathematical Operations 

use organization;
select * from employee;

-- Count 
select count(*) from employee;

select count(empid) from employee where dept="Finance"; -- Count funtion with where clause
select min(experience) from employee; 
select max(experience) from employee; 
select sum(experience) from employee; 
select avg(experience) as emp_exr from employee; 

-- Find the dept wise employee count
select dept, count(*) as employee_count from employee group by dept;

-- Find the role wise employee count
select role, count(*) as employee_role from employee group by role;

-- Find the gender wise count
select gender,count(*) as employee_count from employee group by gender;

-- Having clause was added to sql because the where keyword cannot be used with aggereget function

select * from employee;
select dept, sum(experience) as total_experience
from employee group by dept
having total_experience >=10 and total_experience <=20;

select role, sum(experience) as total_experience
from employee group by role
having total_experience >=10 and total_experience <=20;

-- Fetch department wise employee count using having clause and sort the data
 select dept, count(empid) from employee
 group by dept having count(empid) >= 1
 order by count(empid) desc ;
 
 select dept,sum(experience) as total_experience from employee group by dept 
 having total_experience >= 10 or total_experience <=10;
 
 select * from employee;