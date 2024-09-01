--Nível Básico
-- 1: Liste todos os produtos disponíveis.
SELECT * FROM products
-- 2: Encontre todos os clientes da cidade de "Seattle".
SELECT * FROM customers
WHERE city = 'Seattle'
-- 3: Liste todos os pedidos realizados por um cliente específico (por exemplo, 'ALFKI').
SELECT * FROM orders
WHERE customer_id = 'ALFKI'
-- 4: Obtenha os nomes e preços dos produtos que pertencem à categoria "Beverages".
SELECT p.product_name, p.unit_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Beverages';
-- 5: Mostre o nome e a cidade de todos os fornecedores.
SELECT contact_name, city
FROM suppliers

-- Nível Intermediário
-- 1: Conte o número total de pedidos realizados por cada cliente.
-- 2: Calcule o preço médio dos produtos em cada categoria.
-- 3: Liste os 5 produtos mais caros.
-- 4: Encontre os fornecedores que fornecem produtos com um preço unitário superior a $50.
-- 5: Liste todos os pedidos junto com os detalhes dos produtos em cada pedido.

-- Nível Avançado
-- 1: Liste o total de vendas (preço total) para cada produto, incluindo o nome do produto.
-- 2: Encontre o cliente que fez o maior número de pedidos.
-- 3: Liste todos os pedidos que contêm produtos da categoria "Seafood" e calcule o total de cada pedido.
-- 4: Mostre o nome e o total de vendas de cada fornecedor, ordenados do maior para o menor total.
-- 5: Encontre os produtos que foram vendidos em todos os pedidos realizados em 1997.