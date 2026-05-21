-- NO JOIN
Select * from customers; 
Select * from orders

-- INNER JOIN (only overlap)

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
from customers as c
inner join orders as o
on c.id = o.customer_id

-- LEFT JOIN (left circle + overlap)

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
from customers as c
left join orders as o
on c.id = o.customer_id

-- RIGHT JOIN (right circle + overlap)

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
from customers as c
right join orders as o
on c.id = o.customer_id

-- FULL JOIN (all data)

SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
from customers as c
full join orders as o
on c.id = o.customer_id 

-- LEFT ANTI JOIN (only left side)

SELECT *
from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is null

SELECT *
from orders as o
left join customers as c
on c.id = o.customer_id
where c.id is null

-- RIGHT ANTI JOIN (only right side)
SELECT *
from customers as c
right join orders as o
on c.id = o.customer_id
where c.id is null

-- FULL ANTI JOIN (only unmatching)
SELECT * 
from customers as c
full join orders as o
on c.id = o.customer_id
where c.id is null or o.customer_id is NULL

-- CROSS JOIN (combine every possible row from left with every possible row from right - Cartesian Join)
select *
from customers as c
cross join orders as o
