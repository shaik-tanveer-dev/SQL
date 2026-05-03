-- select classicmodels database
use classicmodels;

select * from products;

-- Find the Each productline total quatity price(rounded to 2 places)
select productline, round(sum(quantityinstock * buyprice),2) total_buy_price
from products
group by productline;

-- find the saling price of each product after 10% discount and rounded
-- nearest upper value
select productName,MSRP,ceil((MSRP-msrp*0.1)) product_price_after_10_discount
from products;

select * from products;


-- string function

select upper('tanveer'), lower('shaik'), concat('srinu','babu'),
concat_ws(" ",'code','gnan'), trim("code"),lpad("123",10,'0'),
left('tanveer', 5),right('tanveer', 4), substring('tanveer',4,4),
instr('tanveershaik@gmail.com','@');