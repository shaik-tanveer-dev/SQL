-- CREATING DATABASE

CREATE DATABASE BANKING;

use BANKING;
CREATE TABLE IF NOT exists ACCOUNTS(
ACCOUNT INT, NAME VARCHAR(20), AMOUNT INT); 

insert into ACCOUNTS (ACCOUNT, NAME, AMOUNT)
values(101,'A',3000),
(102,'B',5000),
(103,'C',8000);

select * from accounts;
-- transfer 3000 from account 103 to 101
begin;
update accounts set amount = amount - 3000
where account = 103;
update accounts set amount = amount + 3000
where account  = 101;

select * from accounts;
commit;
rollback;
