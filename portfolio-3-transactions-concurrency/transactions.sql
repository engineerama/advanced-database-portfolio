BEGIN;

SELECT stock_quantity
FROM product
WHERE product_id = 10
FOR UPDATE;

UPDATE product
SET stock_quantity = stock_quantity - 2
WHERE product_id = 10 AND stock_quantity >= 2;

INSERT INTO orders(customer_id, status, total_amount)
VALUES (25, 'Pending', 500.00);

-- Add order_item using the returned order_id in your tested script.
COMMIT;
