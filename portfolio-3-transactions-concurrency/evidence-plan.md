MIT 8103 Evidence Plan
Student
Adekanye Michael Adeoye

Case Study
MBA Online Marketplace

Purpose
This evidence plan identifies the implementation files, screenshots, outputs and explanations that will be produced for each portfolio activity.

Atomic Order Transaction
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

Rollback Demonstration
BEGIN;
UPDATE product
SET stock_quantity = stock_quantity - 100
WHERE product_id = 10;
ROLLBACK;

SELECT product_id, stock_quantity
FROM product
WHERE product_id = 10;
Concurrency Demonstration with Two Sessions
Session A:
BEGIN;
SELECT * FROM product WHERE product_id = 10 FOR UPDATE;
-- Keep the transaction open temporarily.
Session B:
UPDATE product
SET stock_quantity = stock_quantity - 1
WHERE product_id = 10;

Isolation-Level Extension
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Run a stock-check and order transaction here.
COMMIT;
