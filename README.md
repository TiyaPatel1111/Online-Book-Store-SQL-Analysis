# 📚 Online Book Store Management & Data Analysis (SQL)

## 📌 Project Overview
This portfolio project involves designing, implementing, and analyzing a relational database system for an **Online Book Store** platform using **SQL Server (T-SQL)**. The primary objective is to manage operational e-commerce data and execute data-driven queries to solve real-world business scenarios, such as optimizing inventory, tracking sales revenue, and understanding customer purchasing behavior across **500+ transactional records**.

---

## 🛠️ Key SQL Concepts Demonstrated
* **Advanced Relational Joins:** Implementing multi-table `INNER JOIN` and `LEFT JOIN` operations to connect books, customers, and order transactions.
* **Data Aggregations & Analytics:** Utilizing `SUM()`, `AVG()`, `COUNT()`, and `GROUP BY` to extract core business KPIs.
* **Subqueries & Nested Logic:** Writing complex subqueries and conditional statements (`WHERE`, `HAVING`, `COALESCE`) to handle missing values and filter deep insights.
* **Business Intelligence Reporting:** Sorting and isolating high-value metrics using `ORDER BY`, `DISTINCT`, and limit filters.

---

## 📂 Database Schema & Architecture
The database is built using an optimized relational model consisting of three core tables with strict data integrity:
1. **BOOKS:** Tracks unique identifiers, book titles, author details, genres, retail prices, and available stock units.
2. **CUSTOMERS:** Contains customer profiles, email records, and geographical data (cities/countries).
3. **ORDERS:** Records transaction history including order dates, quantities purchased, and total amounts, linked via foreign keys to both Books and Customers.

---

## 🔍 Business Insights & Analytical Coverage

The project systematically resolves **14 basic and 9 advanced business questions**, divided into three strategic analytical goals:

### 1. Revenue & Sales Optimization
* **Top-Selling Categories:** Isolates highest revenue-generating genres and authors to guide marketing strategies.
* **Order Value Evaluation:** Extracts distinct orders where total transaction amounts exceeded premium benchmarks.
* **Monthly Revenue Trends:** Tracks transactional income patterns over time to study e-commerce demand.

### 2. Inventory & Stock Management
* **Stock Alert Systems:** Identifies low-stock books (less than 10 units remaining) to prevent out-of-stock scenarios.
* **Post-Order Stock Prediction:** Calculates remaining stock counts automatically after active order fulfillments.
* **Product Diversity:** Tracks total unique book titles published across individual genres.

### 3. Customer & Geographical Insights
* **High-Value Buyers:** Highlights top customers who spent the maximum total amount on the platform.
* **Geographical Distribution:** Traces revenue allocation and unit counts across different customer cities and countries.
* **Purchase Recency:** Evaluates unique buyers who placed active orders within specific operational quarters.

---

## 📊 Full Report & Code Snippets
The repository includes the comprehensive T-SQL script containing the complete table structures, database constraints, and execution outputs for all 23 queries.

📄 **[View Complete Project PDF Report](./sql prj..pdf)**

---

## 🚀 How to Run this Project
1. Clone or download this repository.
2. Open **SQL Server Management Studio (SSMS)**.
3. Execute the schema script to set up the `Books`, `Customers`, and `Orders` tables.
4. Import the provided dataset records and run the analytical queries file to generate the business intelligence reports.
