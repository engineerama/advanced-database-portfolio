Session A:
BEGIN;
SELECT * FROM product WHERE product_id = 10 FOR UPDATE;
-- Keep the transaction open temporarily.
Session B:
UPDATE product
SET stock_quantity = stock_quantity - 1
WHERE product_id = 10;
