-- 1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores
SELECT * 
FROM customers, orders, suppliers
-- 2. Obter todos os Clientes em ordem alfabética por país e nome
SELECT country, contact_name
FROM customers
ORDER BY country ASC, contact_name ASC;
-- 3. Obter os 5 pedidos mais antigos
SELECT * 
FROM orders 
ORDER BY order_date
LIMIT 5;
-- 4. Obter a contagem de todos os Pedidos feitos durante 1997
SELECT COUNT(*) AS "Number of Orders During 1997"
FROM orders
WHERE order_date BETWEEN '1997-1-1' AND '1997-12-31';
-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
SELECT contact_name
FROM customers 
WHERE contact_title ILIKE '%manager%'
ORDER BY contact_name ASC;
-- 6. Obter todos os pedidos feitos em 19 de maio de 1997
SELECT *
FROM orders
WHERE order_date = '1997-05-19';