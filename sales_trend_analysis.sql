
-- Task 6: Sales Trend Analysis Using Aggregations

-- 1. Create the table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- 2. Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 500.00, 101),
(2, '2023-01-20', 700.00, 102),
(3, '2023-02-05', 350.00, 103),
(4, '2023-02-18', 400.00, 104),
(5, '2023-03-10', 900.00, 105),
(6, '2023-03-12', 1200.00, 106),
(7, '2023-03-25', 800.00, 107),
(8, '2023-04-01', 150.00, 108);

-- 3. Analyze monthly revenue and order volume
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  online_sales
GROUP BY
  EXTRACT(YEAR FROM order_date),
  EXTRACT(MONTH FROM order_date)
ORDER BY
  year,
  month;
