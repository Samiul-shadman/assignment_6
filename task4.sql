SELECT customers.name AS customer_name, SUM(order_Items.quantity * order_Items.unit_price) AS total_purchase_amount
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_Items ON orders.order_id = order_Items.order_id
GROUP BY customers.name
ORDER BY total_purchase_amount DESC
LIMIT 5;