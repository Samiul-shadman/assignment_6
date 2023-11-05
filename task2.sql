SELECT orders.order_id, products.name AS product_name, order_Items.quantity, order_Items.quantity * order_Items.unit_price AS total_amount
FROM orders
JOIN order_Items ON orders.order_id = order_Items.order_id
JOIN products ON order_Items.product_id = products.product_id
ORDER BY orders.order_id ASC;
