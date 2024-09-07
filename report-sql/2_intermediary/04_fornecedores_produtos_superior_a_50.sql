SELECT s.company_name, p.product_name, p.unit_price
FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE p.unit_price > 50