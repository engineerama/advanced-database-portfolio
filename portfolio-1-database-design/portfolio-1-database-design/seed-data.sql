CREATE TABLE customer (
  customer_id BIGSERIAL PRIMARY KEY,
  first_name VARCHAR(60) NOT NULL,
  last_name VARCHAR(60) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  phone VARCHAR(30),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE category (
  category_id BIGSERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE product (
  product_id BIGSERIAL PRIMARY KEY,
  category_id BIGINT NOT NULL REFERENCES category(category_id),
  product_name VARCHAR(150) NOT NULL,
  description TEXT,
  price NUMERIC(12,2) NOT NULL CHECK (price >= 0),
  stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0)

CREATE TABLE orders (
  order_id BIGSERIAL PRIMARY KEY,
  customer_id BIGINT NOT NULL REFERENCES customer(customer_id),
  order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(30) NOT NULL CHECK (status IN
    ('Pending','Paid','Processing','Shipped','Delivered','Cancelled')),
  total_amount NUMERIC(12,2) NOT NULL CHECK (total_amount >= 0)
);

CREATE TABLE order_item (
  order_item_id BIGSERIAL PRIMARY KEY,
  order_id BIGINT NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
  product_id BIGINT NOT NULL REFERENCES product(product_id),
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  unit_price NUMERIC(12,2) NOT NULL CHECK (unit_price >= 0),
  UNIQUE(order_id, product_id)
);

CREATE TABLE payment (
  payment_id BIGSERIAL PRIMARY KEY,
  order_id BIGINT NOT NULL REFERENCES orders(order_id),
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  amount NUMERIC(12,2) NOT NULL CHECK (amount > 0),
  payment_method VARCHAR(30) NOT NULL,
  payment_status VARCHAR(30) NOT NULL
);

CREATE TABLE delivery (
  delivery_id BIGSERIAL PRIMARY KEY,
  order_id BIGINT NOT NULL UNIQUE REFERENCES orders(order_id),
  delivery_address TEXT NOT NULL,
  delivery_status VARCHAR(30) NOT NULL DEFAULT 'Preparing',
  shipped_date TIMESTAMP,
  delivered_date TIMESTAMP,
  CHECK (delivered_date IS NULL OR shipped_date IS NOT NULL)
