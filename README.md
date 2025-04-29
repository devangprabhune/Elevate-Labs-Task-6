# Elevate-Labs-Task-6

## 📌 Objective
Analyze monthly revenue and order volume using SQL aggregate functions.

## 🧰 Tools Used
- PostgreSQL
- pgAdmin 4

## 🗃 Dataset
Manually created table `online_sales` with the following columns:
- `order_id`
- `order_date`
- `amount`
- `product_id`

## 🧪 Sample Data
8 rows of sample order data were inserted to simulate sales over 4 months.

## 🧠 SQL Concepts Used
- `EXTRACT(MONTH FROM order_date)` for month extraction
- `GROUP BY` year and month
- `SUM(amount)` to calculate monthly revenue
- `COUNT(DISTINCT order_id)` for unique order volume
- `ORDER BY` for sorting results
- An optional `WHERE` clause can be added to filter specific periods

## 📊 Output
The query returns:
- Year and month
- Total revenue
- Total unique order count

## 📁 Files Included
- `sales_trend_analysis.sql`: Full SQL script including table creation, sample data, and final query
- Result screenshot 

## ✅ Outcome
Learned how to group sales data over time and use aggregations to derive insights.
