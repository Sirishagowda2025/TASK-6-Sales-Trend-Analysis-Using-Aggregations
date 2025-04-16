# 📊 Sales Trend Analysis – Task 6 (Data Analyst Internship)

This repository contains my submission for **Task 6: Sales Trend Analysis Using Aggregations**, part of a Data Analyst Internship program. The goal is to use SQL to explore and visualize monthly sales performance, revenue patterns, and product-level insights.

---

## 📁 Project Structure

| File / Folder         | Description                                              |
|-----------------------|----------------------------------------------------------|
| `Sales query`         | Contain entire SQL scripts used for analysis and insights|
| `output.pdf`          | Captured outputs from SQL queries                        |
| `README.md`           | Project documentation (this file)                        |

---

## 🎯 Objectives

- Calculate monthly **revenue** and **order volume**
- Identify the **top 3 months** by revenue
- Find the **top-selling product** for each month

> All tasks were completed using SQL and an online SQL compiler — quick, clean, and no external tools required.

---

## 🧾 Dataset Overview

The dataset used is a simplified online sales table:  
**`online_sales(order_id, order_date, amount, product_id)`**

Sample records span from January to May 2024, with varying products and sales values.

---

## 🧠 Key Analyses Performed

### 1️⃣ Monthly Revenue & Order Volume

Analyzed total sales and distinct orders grouped by month:

Year | Month | Total Revenue | Order Volume
2024 | 01  |   350.00           |    2
2024 | 02  |   300.00           |    2
2024 | 03  |   470.00           |    2
2024 | 04  |   400.00           |    2
2024 | 05  |   900.00           |    2   


### 2️⃣ Top 3 Revenue Months

Captured the highest revenue months using `ORDER BY` and `LIMIT`.

Month   | Total Revenue
2024-05 | 900.00
2024-03 | 470.00
2024-04 | 400.00


### 3️⃣ Top-Selling Product per Month

Ranked products monthly using a window function to find the top seller:

Month   |   Product ID | Revenue
2024-01 |      102     | 200.00
2024-02 |      104     | 180.00
2024-03 |      105     | 250.00
2024-04 |      107     | 300.00
2024-05 |      110     | 500.00


---

## 🧰 Tools Used

- **SQL (SQLite syntax)**
- [**myCompiler.io**](https://mycompiler.io/new/sql) – to execute queries and capture outputs
- **GitHub** – for version control and documentation

---

## 📸 Screenshots

All output screenshots are included in the `Output.psf` folder for reference and clarity.

---

## 🔍 Skills Demonstrated

- Data grouping by month/year
- SQL aggregations: `SUM()`, `COUNT(DISTINCT)`
- Window functions: `RANK() OVER (PARTITION BY)`
- Ordering and filtering for top performance metrics
- Clean code structuring for fast online execution

---

## 📌 Summary

This task demonstrates how even a small dataset can deliver valuable insights when explored with the right tools. The SQL queries written here are designed to be portable, simple, and effective — ideal for quick analysis or integration into dashboards.

> ✅ Ready for real-world analysis.  
> ✅ Built with clarity, speed, and impact in mind.

---

📬 *Thank you for reviewing! Feel free to explore the code and screenshots for deeper insight.*






