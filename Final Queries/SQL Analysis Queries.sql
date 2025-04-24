show tables;
desc customers;
desc orders;
select * from orders;

#Sum of profit by product:
select product, sum(profit) from orders group by product;
#TOP 5 Products by Total profit 
select product, sum(profit) from orders group by product order by sum(profit) desc limit 5;

# Sum of profit by category:
select category, sum(profit) from orders group by category;
# Average profit by category:
select category, avg(profit) from orders group by category;

# Profit by sub-categories
select sub_category, sum(profit) from orders group by sub_category;

#Top 5 Sub-Categories by sum of profit:
select sub_category, sum(profit) from orders group by sub_category order by sum(profit) desc limit 5;
#Average profit by sub-categories:
select sub_category, avg(profit) from orders group by sub_category;
# Top 5 sub-categories by average profit:
select sub_category, avg(profit) from orders group by sub_category order by avg(profit) desc limit 5;

#Total Profit per year:
select year(order_date) , sum(profit) from orders group by year(order_date) order by year(order_date) desc;

#average of profit by year:
select year(order_date) , avg(profit) from orders group by year(order_date) order by year(order_date) desc;


