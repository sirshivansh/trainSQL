-- Use database
CREATE DATABASE IF NOT EXISTS lab2;
USE lab2;

--------------------------------------------------
-- Delete tables if already exist
--------------------------------------------------

DROP TABLE IF EXISTS employee2;
DROP TABLE IF EXISTS department;

--------------------------------------------------
-- Create employee table
--------------------------------------------------

CREATE TABLE employee2
(
id INT PRIMARY KEY,
ename VARCHAR(56) NOT NULL,
dept_id INT,
salary DECIMAL(10,2)
);

--------------------------------------------------
-- Insert records in employee2
--------------------------------------------------

INSERT INTO employee2 VALUES
(1,'Rahul',1,35000),
(2,'Amit',2,42000),
(3,'Sneha',3,38000),
(4,'Priya',1,50000),
(5,'Vikram',4,47000),
(6,'Neha',2,39000),
(7,'Arjun',3,60000);

--------------------------------------------------
-- Create department table
--------------------------------------------------

CREATE TABLE department
(
dept_id INT,
dept_name VARCHAR(16)
);

--------------------------------------------------
-- Insert department records
--------------------------------------------------

INSERT INTO department VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing');

--------------------------------------------------
-- Display tables
--------------------------------------------------

SELECT * FROM employee2;
SELECT * FROM department;

--------------------------------------------------
-- INNER JOIN
--------------------------------------------------

SELECT e.ename, d.dept_name
FROM employee2 e
INNER JOIN department d
ON e.dept_id = d.dept_id;

--------------------------------------------------
-- LEFT JOIN
--------------------------------------------------

SELECT e.ename, d.dept_name
FROM employee2 e
LEFT JOIN department d
ON e.dept_id = d.dept_id;

--------------------------------------------------
-- RIGHT JOIN
--------------------------------------------------

SELECT e.ename, d.dept_name
FROM employee2 e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;