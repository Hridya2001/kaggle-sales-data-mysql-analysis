# Superstore Sales Analysis Using MySQL

A data analysis project where I explore and analyze the Superstore Sales dataset using MySQL. The project includes data cleaning using Excel, importing into MySQL, writing SQL queries to extract insights, and capturing results as screenshots.

---

##  Dataset Source


The dataset used in this project is publicly available on Kaggle:  
 **[Superstore Dataset (Final) – by vivek468](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)**

This dataset contains customer order records including product categories, regions, sales, profit, quantity, discount, etc.

---

## Tech Stack

- **MySQL** – for storing and analyzing data  
- **Microsoft Excel** – for initial data cleaning  
- **Linux Terminal** – for MySQL command-line operations

---

##  Project Steps

###  1. Download and Clean the Dataset
- Downloaded from Kaggle.
- Cleaned in **Excel**:
  - Adjusted the headers.
  - Removed duplicate rows.
  - Deleted inconsistent or unwanted columns like `Order Date` and `Ship Date`.

### 2. Load Data into MySQL
- Created a MySQL database `salesdb`.
- Imported the cleaned `.csv` file into a table named `orders_data`.

###  3. Perform SQL Analysis
Wrote and executed multiple SQL queries to extract insights:

-  Total Sales & Profit  
-  Sales by Category  
-  Region-wise Profitability  
-  Segment-wise Revenue  
-  Top Profitable Products  
-  Products with Maximum Loss  
-  Products Sold in Highest Quantity (with category)

---

##  Query Results

All result screenshots are saved in the [`results/`](results/) folder of this repository.  
You can click the link to explore visual outputs for each SQL query:  
**[View Results Folder →](./results/)**

---

##  Issues Faced & Solutions

| Issue | Solution |
|-------|----------|
|  Mixed or inconsistent date formats | Removed the affected columns in Excel |
|  Duplicate and blank data entries | Cleaned in Excel before import |
|  MySQL GROUP BY error (`only_full_group_by`) | Restructured queries to include all non-aggregated columns in the `GROUP BY` clause |

---

