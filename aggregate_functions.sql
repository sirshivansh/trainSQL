CREATE DATABASE IF NOT EXISTS lab2;
use lab2;
create table IF NOT EXISTS employee2
(
id int PRIMARY KEY,
ename varchar(56) NOT NULL,
dept_id int,
salary decimal(10,2)
);

-- desc employee2;
INSERT INTO employee2 (id, ename, dept_id, salary) VALUES
(1, 'Rahul', 101, 35000.00),
(2, 'Amit', 102, 42000.50),
(3, 'Sneha', 103, 38000.75),
(4, 'Priya', 102, 50000.00),
(5, 'Vikram', 104, 47000.25),
(6, 'Neha', 102, 39000.00),
(7, 'Arjun', 105, 60000.00);

SELECT * FROM employee2;

-- Q1 Count the number of records in Employee table
-- Q2 Count number of employees who have salary more than 55000
-- Q3 Calculate total salary invested on employees in given firm
-- Q4 Find Average Salary of an employee
-- Q5 Find the maximum salary of an employee
-- Q6 Find the minimum salary of an employee
-- Q7 Find department with more than 2 employee
-- Q8 Find highest salary department-wise

-- Q1.  Count the number of records in Employee table
SELECT count(*) FROM employee2;

-- Q2. Count number of employees who have salary more than 55000
SELECT count(*) from employee2 WHERE salary>55000;

-- Q3.  Calculate total salary invested on employees in given firm
select sum(salary) from employee2;

-- Q4. Find Average Salary of an employee
SELECT avg(salary) from employee2;

-- Q5. Find the maximum salary of an employee
SELECT max(salary) from employee2;

-- Q6. Find the minimum salary of an employee
SELECT min(salary) from employee2;

-- Q7. Find department with more than 2 employee
SELECT dept_id, count(*) FROM employee2 GROUP BY dept_id HAVING count(*) > 2;

-- Q8. Find highest salary department-wise
SELECT dept_id, max(salary) FROM employee2 GROUP BY dept_id HAVING max(salary);