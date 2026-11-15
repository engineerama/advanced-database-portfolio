Query 1: Customer Order History
SELECT c.first_name, c.last_name, o.order_id, o.order_date,
       o.total_amount, o.status
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;
Query 2: Best-Selling Products
SELECT p.product_name, SUM(oi.quantity) AS units_sold,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_item oi
JOIN product p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 10;
Query 3: Sales by Category
SELECT c.category_name,
       SUM(oi.quantity * oi.unit_price) AS total_sales
FROM category c
JOIN product p ON c.category_id = p.category_id
JOIN order_item oi ON p.product_id = oi.product_id
GROUP BY c.category_name
ORDER BY total_sales DESC;
