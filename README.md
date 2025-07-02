# 🍔 Food Company Sales Analytics SQL Project

![Food Dashboard](https://raw.githubusercontent.com/abhisheknaiidu/awesome-github-profile-readme/master/img/food-analytics.png)

## 🔍 Project Overview

This SQL project explores and analyzes **1 million+ rows** of synthetic sales data for a fictional global **food company**.  
It simulates real-world transactional data with orders, products, customers, and regional sales insights.

🎯 The goal is to demonstrate practical SQL skills by solving business-critical questions using aggregations, date logic, and window functions.

---

## 🧠 Skills Demonstrated

- Writing complex SQL queries for business scenarios  
- Using **CTEs** and **window functions** like `RANK()` and `LAG()`  
- Performing **sales trend analysis** using dates  
- Segmenting customers and classifying orders  
- Calculating **KPIs** like revenue growth, top products, repeat customers

---

## 📁 Dataset Summary

**Table Name:** `food_company_orders`

| Column Name        | Description                                 |
|--------------------|---------------------------------------------|
| `Order_ID`         | Unique transaction ID                       |
| `Product`          | Food item sold                              |
| `Category`         | Product category (e.g., Beverages, Snacks)  |
| `Quantity`         | Number of units sold                        |
| `Revenue`          | Revenue generated from sale                 |
| `Order_Date`       | Date of transaction                         |
| `Customer_ID`      | Unique ID per customer                      |
| `Customer_Segment` | Segment (e.g., Corporate, Consumer)         |
| `Country`          | Country of order                            |
| `Region`           | Region of order (e.g., North America)       |

---

## 📊 Business Questions Answered

1. **Top 10 food items by total quantity sold**
2. **Revenue by product category**
3. **Monthly order trends**
4. **Best-selling item in each country** (`RANK()` used)
5. **Average order value by customer segment**
6. **Country with highest total revenue**
7. **Daily revenue and order trends**
8. **Repeat customers with 5+ orders**
9. **Most profitable product in each category** (`RANK()` used)
10. **Revenue breakdown by region**
11. **Top 10 customers by lifetime value**
12. **Order size distribution (Small, Medium, Large)**
13. **Revenue share by category (%)** – great for pie charts
14. **Month-over-month revenue growth (%)**
15. **Quarterly sales trends by product category**

---

## 🧮 SQL Features Used

- `GROUP BY`, `ORDER BY`, `LIMIT`
- `RANK()` and `LAG()` window functions
- `DATE_FORMAT()`, `YEAR()`, `QUARTER()` for time grouping
- `CASE WHEN` for order segmentation
- Common Table Expressions (CTEs)

---

## 🛠 Tech Stack

- **Database**: MySQL 8.x  
- **Tool**: MySQL Workbench / DB Visualizer  
- **Dataset**: Generated with Faker and custom logic  
- **Project Type**: Analyst Portfolio, Real-World Business Use Case

---

## 💼 Use Case

This project simulates the kind of analysis you'd do in a **retail/FMCG company** to:
- Identify key growth drivers
- Track customer behavior
- Monitor performance by region
- Evaluate top products
- Forecast based on trends

---

## ✅ How to Use

1. Import the CSV file into your MySQL database
2. Run the table creation script:
   ```sql
   CREATE DATABASE Food_Analysis;
   USE Food_Analysis;

   CREATE TABLE food_company_orders (
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
