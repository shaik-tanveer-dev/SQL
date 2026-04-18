-- 1. Create Database
CREATE DATABASE itcompany;

-- 2. Select Database
USE itcompany;

-- 3. Create Employees Table
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    dept VARCHAR(20),
    salary INT UNSIGNED,
    age TINYINT CHECK (age > 18)
);

-- 4. Insert Sample Data

INSERT INTO employees (emp_id, name, dept, salary, age) VALUES
(101, 'KAUSHIK', 'IT', 50000, 21),
(102, 'RAM', 'IT', 45000, 23),
(103, 'TANVEER', 'HR', 51000, 21),
(104, 'SEKHAR', 'SALES', 40000, 22),
(106, 'PRANAI', 'IT', 55000, 21);

-- 5. View All Employees

SELECT * FROM employees;


-- 6. Queries


-- 1. Return IT department employee names
SELECT name 
FROM employees 
WHERE dept = 'IT';

-- 2. Find employee names belonging to HR and Sales departments
SELECT name, dept 
FROM employees 
WHERE dept IN ('HR', 'SALES');

-- 3. Find employees with salary more than 40,000
SELECT * 
FROM employees 
WHERE salary > 40000;

-- 4. Find IT employees with salary more than 40,000
SELECT * 
FROM employees 
WHERE dept = 'IT' AND salary > 40000;

-- 5. Find non-IT department employees
SELECT * 
FROM employees 
WHERE dept <> 'IT';

-- 6. Find employees with salary between 35,000 and 45,000
SELECT * 
FROM employees 
WHERE salary BETWEEN 35000 AND 45000;

-- 7. Find total number of employees
SELECT COUNT(*) AS total_employees 
FROM employees;

-- 8. Find maximum and minimum salary
SELECT 
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary
FROM employees;

-- 9. Find total salary payout
SELECT SUM(salary) AS total_salary 
FROM employees;

-- 10. Find IT department employee count
SELECT COUNT(*) AS it_employee_count 
FROM employees 
WHERE dept = 'IT';