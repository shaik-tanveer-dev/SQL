
use IT;
-- Create Tables
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
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

-- 1. Subquery with WHERE (single value)
-- Find employees earning more than average salary
SELECT name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 2. Subquery with IN
-- Find employees in same department as 'Tanveer'
SELECT name, department
FROM Employees
WHERE department IN (
    SELECT department 
    FROM Employees 
    WHERE name = 'Tanveer'
);

-- 3. Subquery with EXISTS
-- Check if employees exist in IT department
SELECT name
FROM Employees e
WHERE EXISTS (
    SELECT 1 
    FROM Employees 
    WHERE department = 'IT' AND e.emp_id = emp_id
);

-- 4. Subquery in SELECT
-- Show employee name with average salary
SELECT name, salary,
       (SELECT AVG(salary) FROM Employees) AS avg_salary
FROM Employees;

-- 5. Subquery in FROM (Derived Table)
SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department
) AS dept_avg;