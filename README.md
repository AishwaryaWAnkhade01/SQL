# SQL
# E-Commerce Database

## Overview
This project is a sample SQL database designed to manage an e-commerce platform, including users, products, orders, and inventory.

## Features
- **Users**: Manage customer details.
- **Products**: Track product inventory and prices.
- **Orders**: Store customer orders and their details.
- **OrderDetails**: Link orders to the products they contain.

## ER Diagram
![ER Diagram]([diagrams/er_diagram.png](https://github.com/AishwaryaWAnkhade01/SQL/blob/main/E-Commerece.png))

## Installation
1. Clone the repository.
2. Import the SQL scripts in your database system (MySQL/PostgreSQL).
   - `scripts/create_tables.sql`
   - `scripts/insert_data.sql`

## Example Queries
Here are some example queries:
- Get all users:
  ```sql
  SELECT * FROM Users;
