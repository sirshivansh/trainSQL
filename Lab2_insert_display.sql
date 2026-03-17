/*
create table employee with a field
emp_id (primary key), 
emp_name (not null),
city (default MUMBAI),
salary (check constraint > 30000)

Q1. insert minimum 5 records
Q2. Display all the records
*/

create database lab2;
use lab2;
create table employee
(
emp_id int primary key,
emp_name varchar(25) not null,
city varchar(20) default 'Mumbai',
salary int check(salary >30000)
);

-- Q1. Insert minimum 5 records
insert into employee(emp_id, emp_name, city, salary) values
(1, "Ram", "Pune", 35000),
(2, "Shivansh", "Mumbai", 50000),
(3, "Aman", default, 32000),
(4, "Rohit", "Delhi", 45000),
(5, "Virat", default, 60000);

-- Q2. Display all records
select * from employee;
