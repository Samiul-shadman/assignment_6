SELECT customers.customer_id, customers.name, customers.email, customers.location, COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name, customers.email, customers.location
ORDER BY total_orders DESC;