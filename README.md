# Bootcamp-SQL
#### The Northwind database contains sales data for a company called Northwind Traders, which imports and exports specialty foods from around the world.

#### The Northwind database is an ERP system with data on customers, orders, inventory, purchases, suppliers, shipments, employees, and accounting.

#### The Northwind dataset includes sample data for the following:

- Suppliers: Suppliers and vendors for Northwind
- Customers: Customers who purchase products from Northwind
- Employees: Details of Northwind Traders' employees
- Products: Product information
- Shippers: Details of the shippers who transport products from merchants to end customers
- Orders and Order Details: Sales transaction orders occurring between customers and the company

#### The Northwind database includes 14 tables, and the relationships between the tables are shown in the following entity-relationship diagram.

![Meu Projeto](pics/schema-sql.png)

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

## SQL Queries - Intermediate Level

### 1. Total number of orders placed by each customer
```sql
SELECT orders.customer_id, COUNT(order_id) AS TotalOrders
FROM orders
GROUP BY orders.customer_id
ORDER BY TotalOrders DESC;
```
### 2. Calculation of the average price of products in each category
```sql
SELECT c.category_name, ROUND(AVG(p.unit_price)::numeric, 2) AS AveragePrice
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY AveragePrice DESC;
```
### 3. List the 5 most expensive products in the table
```sql
SELECT p.product_name, p.unit_price
FROM products p
ORDER BY p.unit_price DESC
LIMIT 5;
```
### 4. Suppliers offering products with a unit price higher than 50.
```sql
SELECT s.company_name, p.product_name, p.unit_price
FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE p.unit_price > 50
```
### 5. Name of suppliers and total products supplied by each
```sql
SELECT s.company_name, 
       COUNT(p.product_id) AS TotalProducts
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
GROUP BY company_name
ORDER BY TotalProducts DESC;
```
## SQL Queries - Advanced Level