-- create database

create database IT;

use IT;
-- Create Table
CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Insert Data
INSERT INTO Employees VALUES
(1, 'Tanveer', 30000, 'IT'),
(2, 'Rahul', 25000, 'HR'),
(3, 'Aman', 20000, 'Finance'),
(4, 'Anil', 40000, 'IT');

-- 1. Comparison Operators (=, >, <, <>)
SELECT * FROM Employees
WHERE salary > 25000;

-- 2. Logical Operators (AND, OR, NOT)
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 25000;

SELECT * FROM Employees
WHERE department = 'HR' OR department = 'Finance';

SELECT * FROM Employees
WHERE NOT department = 'IT';

-- 3. Arithmetic Operators (+, -, *, /)
SELECT name, salary, salary + 5000 AS increased_salary
FROM Employees;

-- 4. BETWEEN Operator
SELECT * FROM Employees
WHERE salary BETWEEN 20000 AND 30000;

-- 5. IN Operator
SELECT * FROM Employees
WHERE department IN ('IT', 'HR');

-- 6. LIKE Operator (pattern matching)
SELECT * FROM Employees
WHERE name LIKE 'A%';

-- 7. IS NULL Operator
SELECT * FROM Employees
WHERE salary IS NULL;