CUSTOMER(customer_id PK, first_name, last_name, email UNIQUE, phone, created_at)
CATEGORY(category_id PK, category_name UNIQUE)
PRODUCT(product_id PK, category_id FK, product_name, description, price, stock_quantity)
ORDERS(order_id PK, customer_id FK, order_date, status, total_amount)
ORDER_ITEM(order_item_id PK, order_id FK, product_id FK, quantity, unit_price)
PAYMENT(payment_id PK, order_id FK, payment_date, amount, payment_method, payment_status)
DELIVERY(delivery_id PK, order_id FK UNIQUE, delivery_address, delivery_status, shipped_date, 
