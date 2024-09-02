# Bootcamp-SQL
For this project, I will be using a simple SQL script to populate a database with the famous Northwind example, adapted for PostgreSQL. This script will set up the Northwind database on PostgreSQL, creating all the necessary tables and inserting sample data so that I can start working immediately with SQL queries and analysis in a practical context. This example database is an excellent tool for learning and practicing SQL operations and techniques, particularly useful for understanding how to manipulate relational data in a realistic environment.

![Meu Projeto](images/schema-sql.png)

## SQL Queries - Basic Level
### 1. List all available products

```sql
SELECT * FROM products;
```
### 2. Find all customers in the city of "Seattle"
```sql
SELECT * FROM customers
WHERE city = 'Seattle';
```
### 3. List all orders made by a specific customer (example: 'ALFKI')
```sql
SELECT * FROM orders
WHERE customer_id = 'ALFKI';
```
### 4. Get the names and prices of products that belong to the "Beverages" category
```sql
SELECT p.product_name, p.unit_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Beverages';
```
### 5. Show name and city of all suppliers
```sql
SELECT contact_name, city
FROM suppliers;
```