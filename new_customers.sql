SELECT orders.customer_id, customers.name, customers.email, MIN(orders.created_at) AS first_order_at,
COUNT(orders.customer_id) AS number_of_orders FROM 
`analytics-engineers-club.coffee_shop.orders` orders  RIGHT JOIN 
`analytics-engineers-club.coffee_shop.customers` customers  ON orders.customer_id = customers.id
GROUP BY orders.customer_id, customers.name, customers.email;
