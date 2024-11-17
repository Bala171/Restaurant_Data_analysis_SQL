use restaurant_db;

-- view the menu items table 
Select * from menu_items;

-- Find the number of items on the table
select count(*)
from menu_items;

-- what are the least and most expensive items on the table
Select Max(price) as Most_Expensive,
		Min(price) as Least_Expensive
        from menu_items;
        
SELECT * from menu_items
Order by price ASC;

SELECT * from menu_items
Order by price DESC;

-- How many italian dishes on the menu
select
		category, 
		item_name
from menu_items
where
	category = 'Italian';

select count(*) 
from menu_items
where
	category = 'Italian';
    
-- Find out the most and least expensive in italian dishes on the menu items
select * from menu_items
where category = 'Italian'
order by price ASC;

select * from menu_items
where category = 'Italian'
order by price DESC;

-- How many dishes in each category on the menu items
select Category, count(menu_item_id) as Number_of_dishes
from menu_items
group by category;


-- what is average dishes within the category
select Category, avg(price) average_price
from menu_items
group by category;





