use it_company;

select * from employee;

-- create view

create view it_dept as
select id, name, location from employee
where dept = 'DS';

-- select data in view

select * from it_dept;

-- update 101 employee name in it_dept view

update it_dept set name = 'srinu'
where id = 101;

-- create view dept_emp_count
create view dept_emp_count as
select dept, count(*) emp_count from employee
group by dept;

select * from dept_emp_count;


-- delete one it dept record in employee table
