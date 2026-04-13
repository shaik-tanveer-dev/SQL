Create database school;
use school;
-- create table
create table class9( student_id int, Name varchar(40), Age int, percentage float)
-- dispalying table
select * from class9;

-- inserting values into table
insert into class9(student_id, Name, Age, percentage, city)
values(101,'Tanveer',21,25.4,'hyderabad'),
(102,'koushik',24,30,'Guntur');

 -- Adding new cloumn
ALTER table class9  add  location varchar(40);
insert into class9(location)
values(('hyderabad'));

select * from class9;

-- changing location name to city
ALTER TABLE CLASS9
change location city varchar(40);

insert into class9(student_id, Name, Age, percentage, city)
values('103','ram',23,28,'Guntur');

select * from class9;

-- remove all records

truncate table class9;

-- drop the table deleteing the table
Drop database school;
