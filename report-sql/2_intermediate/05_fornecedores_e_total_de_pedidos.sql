SELECT s.company_name, 
       COUNT(p.product_id) AS TotalProducts
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
GROUP BY company_name
ORDER BY TotalProducts DESC;