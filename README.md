# 🍽️ Food Company SQL Data Analysis Project

![Food Dashboard](https://cdn.dribbble.com/userupload/6930877/file/original-261a1247f3562ccad1cf93466c23f260.png?resize=1024x768)

## 📊 Project Overview

This project presents a **SQL-driven analysis of a large food company’s sales and customer data**. With over 500,000 records, the dataset covers order trends, product performance, customer segmentation, and regional revenue data. The goal is to deliver insights that can help stakeholders make **data-informed business decisions**.

This project is built entirely in **MySQL** and is designed to showcase skills in:
- Writing efficient SQL queries
- Using window functions and CTEs
- Analyzing customer behavior and sales trends
- Delivering actionable business intelligence

---

## 🗂️ Dataset Description

The dataset contains **synthetic but realistic data** for a food company and includes the following fields:

| Column Name        | Description                          |
|--------------------|--------------------------------------|
| `Order_ID`         | Unique identifier for each order     |
| `Product`          | Name of the food item                |
| `Category`         | Product category (Snacks, Beverages…)|
| `Quantity`         | Quantity sold in the order           |
| `Revenue`          | Total order value (USD)              |
| `Order_Date`       | Date of order                        |
| `Customer_ID`      | Unique customer ID                   |
| `Customer_Segment` | Segment (Individual, Corporate…)     |
| `Country`          | Customer country                     |
| `Region`           | Sales region                         |

---

## 🧠 Business Questions Answered with SQL

Below are the key questions answered using SQL with explanations:

1. **Top 10 food items by total quantity sold**  
   _Find the most popular products company-wide._

2. **Revenue by product category**  
   _Which categories generate the most income?_

3. **Monthly order volume trends**  
   _Analyze seasonal demand patterns._

4. **Top-selling food item in each country**  
   _Use window functions to determine the most ordered item_
