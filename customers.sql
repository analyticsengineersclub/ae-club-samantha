SELECT 
<<<<<<< HEAD
    old_name.customer_id, 
    c.name, 
    c.email, 
    MIN(old_name.created_at) AS first_order_of_coffee_at,
    COUNT(old_name.customer_id) AS number_of_coffee_order
FROM 
`analytics-engineers-club.coffee_shop.orders` old_name RIGHT JOIN 
`analytics-engineers-club.coffee_shop.customers` c ON old_name.customer_id = c.id
GROUP BY old_name.customer_id, c.name, c.email;
=======
    orders.customer_id, 
    c.name, 
    c.email, 
    MIN(orders.created_at) AS first_order_of_coffee_at,
    COUNT(orders.customer_id) AS number_of_coffee_order
FROM 
`analytics-engineers-club.coffee_shop.orders` orders RIGHT JOIN 
`analytics-engineers-club.coffee_shop.customers` c ON orders.customer_id = c.id
GROUP BY orders.customer_id, c.name, c.email
order by first_order_at limit 5;
>>>>>>> main
