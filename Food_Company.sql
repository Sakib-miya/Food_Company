CREATE DATABASE IF NOT EXISTS Food_Analysis;
USE Food_Analysis;

-- ✅ Create table to match data
CREATE TABLE IF NOT EXISTS food_company_orders (
    Order_ID VARCHAR(50),
    Product VARCHAR(100),
    Category VARCHAR(100),
    Quantity INT,
    Revenue DECIMAL(10,2),
    Order_Date DATE,
    Customer_ID VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Country VARCHAR(50),
    Region VARCHAR(50)
);

-- 📌 Query 1: Top 10 food items by sales quantity
-- Understand most demanded products
SELECT Product, SUM(Quantity) AS total_quantity
FROM food_company_orders
GROUP BY Product
ORDER BY total_quantity DESC
LIMIT 10;

-- 📌 Query 2: Revenue by product category
-- Evaluate which categories bring in most income
SELECT Category, SUM(Revenue) AS total_revenue
FROM food_company_orders
GROUP BY Category
ORDER BY total_revenue DESC;

-- 📌 Query 3: Orders trend by month
-- Analyze business seasonality
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS order_month, COUNT(*) AS total_orders
FROM food_company_orders
GROUP BY order_month
ORDER BY order_month;

-- 📌 Query 4: Best-selling item in each country
-- Window function to identify top food per country
WITH ranked AS (
  SELECT Country, Product, SUM(Quantity) AS total_quantity,
         RANK() OVER (PARTITION BY Country ORDER BY SUM(Quantity) DESC) AS rnk
  FROM food_company_orders
  GROUP BY Country, Product
)
SELECT Country, Product, total_quantity
FROM ranked
WHERE rnk = 1;

-- 📌 Query 5: Average order value by customer segment
-- Shows purchasing power per segment
SELECT Customer_Segment, ROUND(SUM(Revenue)/COUNT(DISTINCT Order_ID), 2) AS avg_order_value
FROM food_company_orders
GROUP BY Customer_Segment;

-- 📌 Query 6: Country with highest revenue
-- Key for market expansion focus
SELECT Country, SUM(Revenue) AS total_revenue
FROM food_company_orders
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 1;

-- 📌 Query 7: Daily orders and revenue trend
-- Helps spot slow vs busy days
SELECT Order_Date, COUNT(*) AS total_orders, SUM(Revenue) AS total_revenue
FROM food_company_orders
GROUP BY Order_Date
ORDER BY Order_Date;

-- 📌 Query 8: Repeat customers
-- Customers who made more than 5 orders
SELECT Customer_ID, COUNT(DISTINCT Order_ID) AS num_orders
FROM food_company_orders
GROUP BY Customer_ID
HAVING num_orders > 5;

-- 📌 Query 9: Most profitable product per category
-- Combines category and profitability
WITH ranked AS (
  SELECT Category, Product, SUM(Revenue) AS category_revenue,
         RANK() OVER (PARTITION BY Category ORDER BY SUM(Revenue) DESC) AS rnk
  FROM food_company_orders
  GROUP BY Category, Product
)
SELECT Category, Product, category_revenue
FROM ranked
WHERE rnk = 1;

-- 📌 Query 10: Total revenue by region
-- Regional view for business units
SELECT Region, SUM(Revenue) AS total_revenue
FROM food_company_orders
GROUP BY Region;

-- 📌 Query 11: Customers with highest lifetime value
-- Top 10 high-paying customers
SELECT Customer_ID, SUM(Revenue) AS lifetime_value
FROM food_company_orders
GROUP BY Customer_ID
ORDER BY lifetime_value DESC
LIMIT 10;

-- 📌 Query 12: Order size distribution
-- Tracks small vs large orders
SELECT CASE
         WHEN Quantity <= 5 THEN 'Small'
         WHEN Quantity <= 15 THEN 'Medium'
         ELSE 'Large'
       END AS order_size,
       COUNT(*) AS num_orders
FROM food_company_orders
GROUP BY order_size;

-- 📌 Query 13: Revenue share by product category
-- Pie chart ready view
WITH category_totals AS (
  SELECT Category, SUM(Revenue) AS revenue
  FROM food_company_orders
  GROUP BY Category
), total_sum AS (
  SELECT SUM(revenue) AS total FROM category_totals
)
SELECT ct.Category,
       ROUND(ct.revenue * 100.0 / ts.total, 2) AS revenue_share_pct
FROM category_totals ct, total_sum ts
ORDER BY revenue_share_pct DESC;

-- 📌 Query 14: Monthly revenue growth
-- Percentage increase month-over-month
WITH monthly_data AS (
  SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS order_month, SUM(Revenue) AS total_revenue
  FROM food_company_orders
  GROUP BY order_month
)
SELECT order_month,
       total_revenue,
       ROUND((total_revenue - LAG(total_revenue) OVER (ORDER BY order_month)) * 100 / LAG(total_revenue) OVER (ORDER BY order_month), 2) AS growth_pct
FROM monthly_data;

-- 📌 Query 15: Category sales trend by quarter
-- Business-level seasonal sales view
SELECT CONCAT(YEAR(Order_Date), '-Q', QUARTER(Order_Date)) AS quarter,
       Category,
       SUM(Revenue) AS total_revenue
FROM food_company_orders
GROUP BY CONCAT(YEAR(Order_Date), '-Q', QUARTER(Order_Date)), Category
ORDER BY quarter, Category;

