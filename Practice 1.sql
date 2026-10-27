CREATE TABLE Students(
Student_ID int,
Name varchar(50),
Age int,
Course varchar(50)
);

Select * from students;
select Student_ID, Name, Age, Course from Students;
set sql_safe_updates=0;

update students set Age = 23 where Student_ID =1;

delete from Students where Student_ID =1;