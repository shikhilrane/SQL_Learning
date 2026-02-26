-- Create Database
CREATE DATABASE constraintDemo;
USE constraintDemo;

-- Parent Table (for FOREIGN KEY reference)
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Main Table with All Constraints
CREATE TABLE orders (
    order_id INT PRIMARY KEY,                 -- PRIMARY KEY
    email VARCHAR(100) UNIQUE,                -- UNIQUE
    customer_name VARCHAR(100) NOT NULL,      -- NOT NULL
    salary INT DEFAULT 250000,                -- DEFAULT
    age INT CHECK (age >= 18),                -- CHECK
    cust_id INT,                              -- FOREIGN KEY column
    FOREIGN KEY (cust_id) REFERENCES customers(id)
);

-- Insert data into parent table first
INSERT INTO customers VALUES
(1, 'Shikhil'),
(2, 'Karan');

-- Insert valid data into orders table
INSERT INTO orders (order_id, email, customer_name, age, cust_id)
VALUES (101, 'shikhil@gmail.com', 'Shikhil', 29, 1);

-- View Data
SELECT * FROM customers;
SELECT * FROM orders;