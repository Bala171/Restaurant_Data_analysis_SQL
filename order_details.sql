-- view the order details table 
select * from order_details;

-- what is the date range of the table
select * from order_details
order by order_date;

select max(order_date), min(order_date) from order_details;

-- How many orders are made within the date range
Select count(distinct order_id) from order_details;

-- How many orders were made within the data range
select * from order_details;
select count(*) from order_details;

-- which order has most number of items
Select Order_id,count(item_id) AS num_items
from order_details
group by order_id
order by num_items desc;

-- How many items has more than 12 items
select count(*) from
(Select Order_id,count(item_id) AS num_items
from order_details
Group by order_id
having num_items >12) as Num_order_more_than_12; 

