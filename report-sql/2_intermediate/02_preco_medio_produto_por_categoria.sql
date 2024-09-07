SELECT c.category_name, ROUND(AVG(p.unit_price)::numeric, 2) AS AveragePrice
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY AveragePrice DESC;
