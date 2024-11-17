-- combine menu_items and order_details on single table
Select * from menu_items;
select * from order_details;

select *
from order_details od Left JOIN menu_items mi 
	on od.item_id = mi.menu_item_id;
    
-- what were the most and least orderd items? what categories were they in ?

select item_name,count(order_details_id) as num_itempurchase, category
from order_details od Left Join menu_items mi
	on od.item_id = mi.menu_item_id
Group by item_name, category
order by num_itempurchase Desc;

-- what were top 5 orders that spents most money
select order_id, Sum(price) as Totalspending
from order_details od Left Join menu_items mi
	on od.item_id = mi.menu_item_id
group by order_id
order by Totalspending DESC
Limit 5;

-- view the details of highest spend order.what insight can gather from that
select category,Count(item_id) as num_items
from order_details od Left Join menu_items mi
	on od.item_id = mi.menu_item_id
where order_id = 440
Group by category;

select order_id,category,Count(item_id) as num_items
from order_details od Left Join menu_items mi
	on od.item_id = mi.menu_item_id
where order_id IN (440,2075,1957,330,2675)
Group by category,order_id;

select order_id, Sum(price) as Totalspending
from order_details od Left Join menu_items mi
	on od.item_id = mi.menu_item_id
group by order_id
order by Totalspending DESC
Limit 5;





    
    
    
    
