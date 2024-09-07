SELECT orders.customer_id, COUNT(order_id) AS TotalOrders
FROM orders
GROUP BY orders.customer_id
ORDER BY TotalOrders DESC;