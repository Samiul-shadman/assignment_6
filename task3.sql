SELECT categories.name AS category_name, SUM(order_Items.quantity * order_Items.unit_price) AS total_revenue
FROM categories 
JOIN products  ON categories.category_id = products.category_id
JOIN order_Items ON products.product_id = order_Items.product_id
GROUP BY categories.name
ORDER BY total_revenue DESC;