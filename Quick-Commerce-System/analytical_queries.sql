-- Analytical Queries
-- Work in Progress

-- 1. Total orders placed by each customer

SELECT c.name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;


-- 2. Most sold products

SELECT p.product_name,
       SUM(oi.quantity) AS units_sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC;


-- 3. Customer spending rank

SELECT customer_id,
       SUM(total_amount) AS total_spent,
       RANK() OVER
       (ORDER BY SUM(total_amount) DESC)
       AS spending_rank
FROM Orders
GROUP BY customer_id;


-- TODO:
-- Add revenue analysis queries
-- Add inventory optimization queries
-- Add CTE examples
