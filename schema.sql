-- Check database and tables
SHOW DATABASES;
USE ecommerce_db;
SHOW TABLES;

-- View structure of a table
DESCRIBE Customers;

-- Optional: Test insert and select
INSERT INTO Customers VALUES (1, 'Alice', 'India');
SELECT * FROM Customers;
