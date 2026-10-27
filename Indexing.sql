-- Index in mysql
-- How to create indexes
select * from employee5;

-- Create a index
create index demoindex on employee5(firstname);

-- Drop the index
drop index demoindex on employee5;

-- Create index on multiple columns
create index demoindex on employee5(firstname, lastname);

-- See the index
show index from employee;
