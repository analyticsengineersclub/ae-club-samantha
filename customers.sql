SELECT o.customer_id, c.name, c.email, MIN(o.created_at) AS first_order_at,
COUNT(o.customer_id) AS number_of_orders FROM 
`analytics-engineers-club.coffee_shop.orders` o RIGHT JOIN 
`analytics-engineers-club.coffee_shop.customers` c ON o.customer_id = c.id
GROUP BY o.customer_id, c.name, c.email;