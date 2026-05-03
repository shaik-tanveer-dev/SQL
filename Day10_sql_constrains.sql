-- Create database

CREATE DATABASE College;

use college;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE if not exists Students (
    student_id INT PRIMARY KEY,                  -- PRIMARY KEY
    name VARCHAR(100) NOT NULL,                  -- NOT NULL
    email VARCHAR(100) UNIQUE,                   -- UNIQUE
    age INT CHECK (age >= 18),                   -- CHECK
    course VARCHAR(50) DEFAULT 'B.Tech',         -- DEFAULT
    dept_id INT,                                 -- FOREIGN KEY column

    CONSTRAINT fk_department
    FOREIGN KEY (dept_id)
    REFERENCES Departments(dept_id)              -- FOREIGN KEY
);