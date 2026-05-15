/*
=============================================================
Database Creation and Table Setup Script (MySQL Version)
=============================================================
Script Purpose:
    This script creates a new MySQL database named 'MyDatabase'. 
    If the database already exists, it is dropped to ensure a clean setup. 
    The script then creates two tables: 'customers' and 'orders'
    with their respective schemas, and populates them with sample data.
    
WARNING:
    Running this script will drop the entire 'MyDatabase' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/

DROP DATABASE IF EXISTS MyDatabase;
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- ======================================================
-- Table: customers
-- ======================================================
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT NOT NULL,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT,
    PRIMARY KEY (id)
);

-- Insert customers data
INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria', 'Germany', 350),
    (2, ' John', 'USA', 900),
    (3, 'Georg', 'UK', 750),
    (4, 'Martin', 'Germany', 500),
    (5, 'Peter', 'USA', 0);

-- ======================================================
-- Table: orders
-- ======================================================
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    sales INT,
    PRIMARY KEY (order_id)
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);

SELECT
    first_name, 
    country, 
    score 
FROM customers

SELECT *
FROM customers
WHERE score != 0

SELECT *
FROM customers
WHERE country = 'Germany'

SELECT * 
FROM customers
ORDER BY score DESC

SELECT * 
FROM customers
ORDER BY country ASC, score DESC

SELECT 
    country AS customer_country, 
    SUM(score) AS total_score, 
    COUNT(id) AS total_customers
FROM customers
GROUP BY country

SELECT 
    country, 
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

SELECT DISTINCT
    country
FROM customers

SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3

SELECT *
FROM customers
ORDER BY score ASC
LIMIT 2

SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 2

SELECT * 
FROM customers;
SELECT * 
FROM orders;

SELECT 123 AS static_number

SELECT 'Hello, world' AS static_string

SELECT 
    id, 
    first_name,
    'New Customer' AS customer_type
FROM customers

