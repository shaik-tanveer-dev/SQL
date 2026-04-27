-- constraints in sql

-- create a database

CREATE DATABASE IT_COMPANY;

USE IT_COMPANY;

-- create a table

CREATE TABLE EMPLOYEE(
ID INT NOT NULL,
NAME VARCHAR(25) NOT NULL,
DEPT VARCHAR(25) NOT NULL,
SALARY INT unsigned NOT NULL,
LOCATION VARCHAR(25) NOT NULL,
primary key(ID));

-- check table info

DESCRIBE EMPLOYEE;

-- insert data into employee table

insert into employee(ID, NAME, DEPT, SALARY, LOCATION)
values(101,'Tanveer','DS',15000,'India'),
(102,'Ram','AIDS',16787,'UP'),
(103,'RAvi','HI',67875,'AP');