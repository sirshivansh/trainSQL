-- Q1. Write Query to create following table structure:
-- Employee(emp_id, Name, Department, Salary, City)
CREATE DATABASE db;
USE db;
CREATE TABLE Employee(
    emp_id INT,
    Name VARCHAR(45),
    Department VARCHAR(45),
    Salary INT,
    City VARCHAR(45)
);


-- a) Insert minimum 10 records

INSERT INTO Employee VALUES
(1,'Ravi','IT',40000,'Delhi'),
(2,'Amit','HR',35000,'Pune'),
(3,'Neha','IT',50000,'Mumbai'),
(4,'Karan','Sales',32000,'Nagpur'),
(5,'Priya','IT',45000,'Delhi'),
(6,'Rohit','HR',38000,'Mumbai'),
(7,'Sneha','IT',60000,'Pune'),
(8,'Arjun','Sales',30000,'Indore'),
(9,'Vikas','IT',70000,'Delhi'),
(10,'Anita','HR',36000,'Mumbai');


-- Add new column pincode

ALTER TABLE Employee
ADD pincode INT;


-- Add values in pincode column
SET SQL_SAFE_UPDATES = 0;

UPDATE Employee SET pincode = 400001 WHERE emp_id = 1;
UPDATE Employee SET pincode = 400002 WHERE emp_id = 2;
UPDATE Employee SET pincode = 400003 WHERE emp_id = 3;
UPDATE Employee SET pincode = 400004 WHERE emp_id = 4;
UPDATE Employee SET pincode = 400005 WHERE emp_id = 5;
UPDATE Employee SET pincode = 400006 WHERE emp_id = 6;
UPDATE Employee SET pincode = 400007 WHERE emp_id = 7;
UPDATE Employee SET pincode = 400008 WHERE emp_id = 8;
UPDATE Employee SET pincode = 400009 WHERE emp_id = 9;
UPDATE Employee SET pincode = 400010 WHERE emp_id = 10;


-- b) View all the employee who works in IT department

SELECT * FROM Employee
WHERE Department = 'IT';


-- c) Display employee whose salary is greater than 30000

SELECT * FROM Employee
WHERE Salary > 30000;


-- d) Update Salary of Ravi by 5000

UPDATE Employee
SET Salary = Salary + 5000
WHERE Name = 'Ravi';


-- e) Change city of Amit to Mumbai

UPDATE Employee
SET City = 'Mumbai'
WHERE Name = 'Amit';


-- f) Delete employee whose empid is 3

DELETE FROM Employee
WHERE emp_id = 3;


-- Show final table

SELECT * FROM Employee;