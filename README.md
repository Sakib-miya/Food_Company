# 🍽️ Food Company SQL Data Analysis Project

![Food Company Analytics](https://images.unsplash.com/photo-1551218808-94e220e084d2?auto=format&fit=crop&w=1200&q=80)

## 📊 Project Overview

This SQL-based project explores **food sales data across countries, categories, and customer types**, aiming to generate deep business insights for decision-makers.

This dataset mimics real-world scale with **500,000+ food orders**. You’ll find answers to questions like:
- What are the most sold food products?
- Which customer segment brings in the most revenue?
- What does monthly growth look like?

🔍 **Why this project?**
This project demonstrates your skills in:
- Writing clean SQL queries
- Using CTEs and window functions
- Performing business and customer analytics
- Solving real-world business questions using data

---

## 🗃️ Dataset Description

| Column Name        | Description                                |
|--------------------|--------------------------------------------|
| `Order_ID`         | Unique ID for each order                   |
| `Product`          | Name of the food product                   |
| `Category`         | Product category (e.g. Snacks, Drinks)     |
| `Quantity`         | Quantity sold                              |
| `Revenue`          | Total order revenue                        |
| `Order_Date`       | Date of order                              |
| `Customer_ID`      | Unique customer ID                         |
| `Customer_Segment` | Segment: Corporate, Consumer, etc.         |
| `Country`          | Customer’s country                         |
| `Region`           | Sales region                               |

---

## 📌 Key Questions Answered in SQL

Each query is solved using MySQL and explained clearly:

### 1. Top 10 Food Items by Quantity Sold  
_Identify most popular food products._

### 2. Revenue by Product Category  
_Find which categories generate the most money._

### 3. Monthly Order Trends  
_Spot seasonality in order volume._

### 4. Best-selling Item in Each Country  
_Using `RANK()` to identify top product per country._

### 5. Avg. Order Value by Customer Segment  
_Compare spending habits across segments._

### 6. Country with Highest Revenue  
_Target best-performing country for growth._

### 7. Daily Orders and Revenue  
_Track busy and slow days._

### 8. Repeat Customers (5+ Orders)  
_Evaluate customer retention._

### 9. Most Profitable Product per Category  
_Which product in each category is most valuable?_

### 10. Total Revenue by Region  
_Regional performance breakdown._

### 11. Top 10 Customers by Lifetime Spend  
_Look at your highest-paying customers._

### 12. Order Size Distribution  
_Label orders as Small, Medium, or Large._

### 13. Revenue Share by Product Category  
_Easy to visualize in pie charts._

### 14. Monthly Revenue Growth Rate  
_Percentage growth month-over-month._

### 15. Category Revenue Trend by Quarter  
_Sales trends per category by business quarter._

---

## 🧠 Skills Demonstrated

- ✅ Complex `GROUP BY` aggregation
- ✅ `CASE` statements for categorization
- ✅ CTEs (`WITH`) for layered logic
- ✅ Window functions (`RANK`, `LAG`) for ranking/trends
- ✅ Monthly/quarterly time series analysis

---

## 🛠️ Tech Stack

- **SQL**: MySQL 8+
- **Tool**: MySQL Workbench
- **Dataset**: 500,000+ synthetic rows
- **Optional**: Power BI or Tableau for visualizations

---

## 📎 How to Use

1. Import the CSV file (`food_company_orders.csv`) into MySQL Workbench.
2. Run the `Food_Analysis_Queries.sql` file.
3. Customize queries or create dashboards for visual insights.

---

## 📈 Suggested Visualizations

If you plan to make this into a Power BI or Tableau dashboard, consider:
- 📊 Pie chart: Revenue by category
- 📉 Line chart: Monthly revenue trend
- 📈 Bar chart: Top-selling products
- 🗺️ Map: Revenue by country

---

## 📬 Contact

**Your Name**  
🔗 [LinkedIn](https://linkedin.com/in/your-profile) • 🌐 [Portfolio](https://your-portfolio.com)

---

## ⭐ Star This Project

If you like this project, give it a ⭐ and share it with other aspiring data analysts!

