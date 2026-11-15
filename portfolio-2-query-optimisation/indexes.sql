EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM orders WHERE customer_id = 25;

CREATE INDEX idx_orders_customer ON orders(customer_id);

EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM orders WHERE customer_id = 25;
