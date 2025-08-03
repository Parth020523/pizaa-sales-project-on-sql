
USE project_1;

-- q1
-- select  count(order_details_id) as total_order
-- from order_details ;

-- Q 2
-- SELECT SUM(t1.quantity * t2.price) AS total_sales
-- FROM order_details AS t1
-- JOIN pizzas AS t2 ON t1.pizza_id = t2.pizza_id;

-- q 3
-- select pizza_id, price
-- from pizzas
-- order by price desc
-- limit 1;

-- q4
-- -- select size, count(size) as total
-- -- from pizzas
-- -- group by size 
-- -- order by total desc
-- -- limit 1;

-- CHAP 3 Q1
-- select pizza_id, count(quantity) as total
-- from order_details
-- group by pizza_id
-- order by total desc
-- limit 5;

--  q 3
-- SELECT t2.pizza_id,SUM(t1.quantity * t2.price) AS total_sales
-- FROM order_details AS t1
-- JOIN pizzas AS t2 ON t1.pizza_id = t2.pizza_id
-- GROUP BY t1.pizza_id
-- order by total_sales desc
-- limit 3;

-- q 2 
-- select date, hour(time) as hours, count(order_id) as counting
-- from orders
-- group by date, hours
-- order by date, counting desc;

-- chap 4 q1
-- select t1.pizza_id, sum(t1.price*t2.quantity) as revenue, 
-- round(100* sum(t1.price*t2.quantity)/
-- (select sum(t1.price*t2.quantity)
-- from pizzas as t1
-- join  order_details as t2
-- on t1.pizza_id = t2.pizza_id ),2) as percentage
-- from pizzas as t1
-- join  order_details as t2
-- on t1.pizza_id = t2.pizza_id
-- group by t1.pizza_id
-- order by percentage desc;--

-- q 2
-- select t1.date, sum(t2.quantity*t3.price) as revenue
-- from orders as t1
-- join order_details as t2
-- on t1.order_id = t2.order_id
-- join pizzas as t3
-- on t2.pizza_id = t3.pizza_id
-- group by t1.date; 

-- q3
-- select t1.category, sum(t3.quantity* t2.price) as revenue
-- from pizza_types as t1
-- join pizzas as t2
-- on t1.pizza_type_id = t2.pizza_type_id
-- join order_details as t3
-- on t2.pizza_id = t3.pizza_id
-- group by t1.category
-- order by revenue desc;

-- select date(t1.date) as day, sum(t2.quantity) as sums
-- from orders as t1
-- join order_details as t2
-- on t1.order_id=  t2.order_id
-- group by day;