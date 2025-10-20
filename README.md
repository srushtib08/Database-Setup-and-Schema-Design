🛍️ E-commerce Database Schema Project

📘 Overview

This project demonstrates the design and creation of a well-structured E-commerce database schema using SQL.
It covers database setup, entity-relationship modeling, and schema normalization to ensure data consistency, scalability, and minimal redundancy.

🎯 Objective

To design and implement a normalized relational database schema for an E-commerce system that manages customers, products, invoices, and their relationships.

🧰 Tools Used

MySQL Workbench (or pgAdmin / SQLiteStudio)

SQL for database creation

ER Diagram Tool (MySQL Workbench / Draw.io / Lucidchart)

🧩 Entities and Attributes
1. Customers
Attribute	Type	Description
customer_id	INT (PK)	Unique identifier for each customer
full_name	VARCHAR(100)	Name of the customer
country	VARCHAR(100)	Country of the customer
2. Products
Attribute	Type	Description
product_id	VARCHAR(20) (PK)	Unique product code
description	VARCHAR(255)	Description of the product
unit_price	DECIMAL(10,2)	Price per unit of product
3. Invoices
Attribute	Type	Description
invoice_id	VARCHAR(20) (PK)	Unique invoice number
customer_id	INT (FK)	Links invoice to a customer
invoice_date	DATETIME	Date and time of purchase
4. InvoiceItems
Attribute	Type	Description
invoice_item_id	INT (PK, Auto Increment)	Unique identifier for each order item
invoice_id	VARCHAR(20) (FK)	Linked to invoice
product_id	VARCHAR(20) (FK)	Linked to product
quantity	INT	Number of items purchased
unit_price	DECIMAL(10,2)	Price per item at the time of purchase
🔗 Relationships
Relationship	Type	Description
Customer → Invoices	1 : N	One customer can have many invoices
Invoice → InvoiceItems	1 : N	One invoice can have many items
Product → InvoiceItems	1 : N	One product can appear in many invoices
🧠 Normalization

Data organized in 3rd Normal Form (3NF)

No duplicate customer or product data

Referential integrity maintained via foreign keys

💻 SQL Script

The provided SQL script includes:

Database creation

Table creation (Customers, Products, Invoices, InvoiceItems)

Primary and foreign key constraints

📄 File: ecommerce_schema.sql

🗺️ ER Diagram

The ER diagram visually represents entity relationships in the E-commerce schema:

Customers ↔ Invoices (1:N)

Invoices ↔ InvoiceItems (1:N)

Products ↔ InvoiceItems (1:N)

📷 File: ecommerce_ERD.png

🚀 How to Use

Open MySQL Workbench (or your preferred SQL tool).

Run the ecommerce_schema.sql script.

Verify tables and relationships.

Import sample data (optional).

View the ER diagram for a visual understanding of the schema.

🏁 Outcome

✅ A normalized, relational E-commerce database
✅ SQL script for schema creation
✅ ER Diagram for visualization
✅ Clear understanding of entity relationships
