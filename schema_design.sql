-- Step 1: Create Database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Step 2: Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    country VARCHAR(100)
);

-- Step 3: Create Products Table
CREATE TABLE Products (
    product_id VARCHAR(20) PRIMARY KEY,
    description VARCHAR(255),
    unit_price DECIMAL(10,2) NOT NULL
);

-- Step 4: Create Invoices Table
CREATE TABLE Invoices (
    invoice_id VARCHAR(20) PRIMARY KEY,
    customer_id INT,
    invoice_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Step 5: Create InvoiceItems Table
CREATE TABLE InvoiceItems (
    invoice_item_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
