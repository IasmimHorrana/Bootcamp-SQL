SELECT p.product_name, SUM(od.quantity * od.unit_price) AS total_sales
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name;