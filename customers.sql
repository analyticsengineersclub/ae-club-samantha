SELECT o.customer_id, c.name, c.email, MIN(o.created_at) AS first_orders_at,
COUNT(o.customer_id) AS numbers_of_orders FROM
`analytics-engineers-club.coffee_shop.orders` o RIGHT JOIN 
`analytics-engineers-club.coffee_shop.customers` c ON o.customer_id = c.id
GROUP BY o.customer_id, c.name, c.email
order by first_order_at limit 5;
